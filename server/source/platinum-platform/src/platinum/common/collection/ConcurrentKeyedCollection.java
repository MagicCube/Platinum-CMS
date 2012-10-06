package platinum.common.collection;

import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;

import platinum.common.PTRuntimeException;


public abstract class ConcurrentKeyedCollection<K, V> extends CopyOnWriteArrayList<V>
{
	private static final long serialVersionUID = 8297143250060355693L;

	private final ConcurrentHashMap<K, V> _map = new ConcurrentHashMap<K, V>();

	public abstract K getKeyOfElement(V element);

	public boolean containsKey(K p_key)
	{
		return _map.containsKey(p_key);
	}

	public V get(K p_key)
	{
		return _map.get(p_key);
	}

	@Override
	public void add(int index, V element)
	{
		if (!beforeAdd(element))
		{
			return;
		}
		
		_addToMap(element);
		super.add(index, element);
	}

	@Override
	public boolean add(V e)
	{
		if (!beforeAdd(e))
		{
			return false;
		}
		
		boolean result = super.add(e);
		if (result)
		{
			_addToMap(e);
		}
		return result;
	}

	@Override
	public boolean addAll(Collection<? extends V> p_c)
	{
		for (V e : p_c)
		{
			boolean allow = beforeAdd(e);
			if (!allow)
			{
				return false;
			}
		}
		
		boolean result = super.addAll(p_c);
		if (result)
		{
			for (V e : p_c)
			{
				_addToMap(e);
			}
		}
		return result;
	}

	@Override
	public boolean addAll(int p_index, Collection<? extends V> p_c)
	{
		for (V e : p_c)
		{
			boolean allow = beforeAdd(e);
			if (!allow)
			{
				return false;
			}
		}
		
		boolean result = super.addAll(p_index, p_c);
		if (result)
		{
			for (V e : p_c)
			{
				_addToMap(e);
			}
		}
		return result;
	}

	@Override
	public int addAllAbsent(Collection<? extends V> p_c)
	{
		for (V e : p_c)
		{
			K key = getKeyOfElement(e);
			if (key != null && !containsKey(key))
			{
				if (beforeAdd(e))
				{
					_addToMap(e);
				}
			}
		}
		int result = super.addAllAbsent(p_c);
		return result;
	}

	@Override
	public boolean addIfAbsent(V e)
	{
		if (!beforeAdd(e))
		{
			return false;
		}
		
		boolean result = addIfAbsent(e);
		if (result)
		{
			_addToMap(e);
		}
		return result;
	}

	@Override
	public void clear()
	{
		if (!beforeClear())
		{
			return;
		}
		
		super.clear();
		_map.clear();
		
		afterClear();
	}

	@Override
	public V remove(int p_index)
	{
		V value = super.remove(p_index);
		if (value != null)
		{
			_removeFromMap(value);
		}
		return value;
	}

	@Override
	public boolean remove(Object p_o)
	{
		boolean result = super.remove(p_o);
		if (result)
		{
			@SuppressWarnings("unchecked")
			V o = (V) p_o;
			_removeFromMap(o);
		}
		return result;
	}
	
	public boolean removeByKey(K p_key)
	{
		if (p_key != null)
		{
			V element = get(p_key);
			if (element != null)
			{
				return remove(element);
			}
			else
			{
				return false;
			}
		}
		else
		{
			return false;
		}
	}

	@Override
	public boolean removeAll(Collection<?> p_c)
	{
		for (Object e : p_c)
		{
			@SuppressWarnings("unchecked")
			V element = (V)e;
			if (element != null)
			{
				K key = getKeyOfElement(element);
				if (key != null)
				{
					_map.remove(key);
				}
			}
		}
		boolean result = super.removeAll(p_c);
		if (result) afterClear();
		return result;
	}

	private void _addToMap(V element)
	{
		if (element == null)
		{
			PTRuntimeException ty = new PTRuntimeException("Element can not be null.");
			throw ty;
		}
		K key = getKeyOfElement(element);
		if (key == null)
		{
			PTRuntimeException ty = new PTRuntimeException("Key can not be null.");
			throw ty;
		}
		if (containsKey(key))
		{
			PTRuntimeException ty = new PTRuntimeException("Duplicated key '" + key + "'");
			throw ty;
		}
		_map.put(key, element);
		
		afterAdd(element);
	}

	private void _removeFromMap(V element)
	{
		if (element == null)
		{
			PTRuntimeException ty = new PTRuntimeException("Element can not be null.");
			throw ty;
		}
		K key = getKeyOfElement(element);
		_map.remove(key);
		
		afterRemove(element);
	}

	
	
	
	
	protected boolean beforeAdd(V element)
	{
		return true;
	}
	
	protected void afterAdd(V element)
	{
		
	}
	
	protected void afterRemove(V element)
	{
		
	}
	
	
	protected boolean beforeClear()
	{
		return true;
	}
	
	protected void afterClear()
	{
		
	}
}
