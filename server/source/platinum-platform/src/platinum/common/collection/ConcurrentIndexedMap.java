package platinum.common.collection;

import java.util.Iterator;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;

import platinum.common.PTRuntimeException;


public class ConcurrentIndexedMap<K, V> extends ConcurrentHashMap<K, V>
{
	private static final long serialVersionUID = -1898101234959245785L;
	private Queue<V> _list = null;
	
	public ConcurrentIndexedMap()
	{
		
	}
	
	@Override
	public V put(K key, V value)
	{
		V result = super.put(key, value);
		if (_list == null)
		{
			_list = new ConcurrentLinkedQueue<V>();
		}
		_list.add(value);
		return result;
	};
	
	@Override
	public V remove(Object key)
	{
		V value = super.remove(key);
		if (_list != null)
		{
			_list.remove(value);
		}
		return value;
	};
	
	@Override
	public void clear()
	{
		if (_list != null)
		{
			_list.clear();
		}
		super.clear();
	}
	
	public V get(int p_index)
	{
		if(null == _list)
		{
			PTRuntimeException ty = new PTRuntimeException("Empty list.");
			throw ty;
		}
		if(p_index < 0 || p_index >= _list.size())
		{
			PTRuntimeException ty = new PTRuntimeException("Index out of range.");
			throw ty;
		}
		
		Iterator<V> it = _list.iterator();
		V value = null;
		int countIndex = p_index;
		while(countIndex > 0 && it.hasNext())
		{
			value = it.next();
			countIndex--;
		}
		
		return value;
	}
	
	
}
