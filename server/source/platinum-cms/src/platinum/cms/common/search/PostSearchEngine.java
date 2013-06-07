package platinum.cms.common.search;

import java.io.IOException;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;

import org.apache.lucene.analysis.Analyzer;
import org.apache.lucene.analysis.TokenStream;
import org.apache.lucene.document.Document;
import org.apache.lucene.document.Field;
import org.apache.lucene.document.Field.Index;
import org.apache.lucene.document.Field.Store;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.index.IndexWriter;
import org.apache.lucene.index.IndexWriterConfig;
import org.apache.lucene.index.IndexWriterConfig.OpenMode;
import org.apache.lucene.index.Term;
import org.apache.lucene.queryParser.MultiFieldQueryParser;
import org.apache.lucene.queryParser.ParseException;
import org.apache.lucene.search.highlight.Highlighter;
import org.apache.lucene.search.IndexSearcher;
import org.apache.lucene.search.Query;
import org.apache.lucene.search.ScoreDoc;
import org.apache.lucene.search.TopDocs;
import org.apache.lucene.search.highlight.Fragmenter;
import org.apache.lucene.search.highlight.InvalidTokenOffsetsException;
import org.apache.lucene.search.highlight.QueryScorer;
import org.apache.lucene.search.highlight.SimpleFragmenter;
import org.apache.lucene.search.highlight.SimpleHTMLFormatter;
import org.apache.lucene.store.Directory;
import org.apache.lucene.store.FSDirectory;
import org.apache.lucene.util.Version;
import org.jsoup.Jsoup;
import org.wltea.analyzer.lucene.IKAnalyzer;


import platinum.cms.common.entity.PostEntity;
import platinum.common.PTEnvironment;
import platinum.common.PTRuntimeException;
import platinum.common.util.StringUtil;

public class PostSearchEngine
{
	private IndexReader _indexReader = null;
	private IndexWriter _indexWriter = null;
	private IndexSearcher _indexSearcher = null;
	private MultiFieldQueryParser _queryParser = null;
	
	private PostSearchEngine()
	{
		IndexWriterConfig writerConf = new IndexWriterConfig(Version.LUCENE_30, getDefaultAnalyzer());
		writerConf.setOpenMode(OpenMode.CREATE_OR_APPEND);
		try
		{
			_indexWriter = new IndexWriter(getIndexDirectory(), writerConf);
		}
		catch (Exception e2)
		{
			throw new PTRuntimeException(e2);
		}
		try
		{
			_indexWriter.commit();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		try
		{
			_indexReader = IndexReader.open(getIndexDirectory());
		}
		catch (Exception e1)
		{
			throw new PTRuntimeException(e1);
		}
		_indexSearcher = new IndexSearcher(_indexReader);
		
		
		
		_queryParser = new MultiFieldQueryParser(Version.LUCENE_30, new String[] { "contentText", "title", "id" }, getDefaultAnalyzer());
	}
	
	private static PostSearchEngine _instance = null;
	public static PostSearchEngine getInstance()
	{
		if (_instance == null)
		{
			_instance = new PostSearchEngine();			
		}	
		return _instance;
	}
	
	private static Analyzer _analyzer = null;
	public static Analyzer getDefaultAnalyzer()
	{
		if (_analyzer == null)
		{
			_analyzer = new IKAnalyzer();
		}
		return _analyzer;
	}
	
	private Directory _indexDirectory = null;
	private Directory getIndexDirectory()
	{
		if (_indexDirectory == null)
		{
			try
			{
				_indexDirectory = FSDirectory.open(PTEnvironment.getSharedFile("indexes3"));
			}
			catch (IOException e)
			{
				throw new PTRuntimeException(e);
			}
		}
		return _indexDirectory;
	}
	
	public void buildIndex(PostEntity p_po)
	{
		Document document = _generateDocumentFromVO(p_po);
		
		try
		{
			_indexWriter.addDocument(document);
			_indexWriter.commit();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public void updateIndex(PostEntity p_vo)
	{
		Document document = _generateDocumentFromVO(p_vo);
		try
		{
			_indexWriter.updateDocument(new Term("id", p_vo.getId()), document);
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}

	public void deleteIndex(String p_id)
	{
		try
		{
			_indexWriter.deleteDocuments(new Term("id", p_id));
			_indexWriter.commit();
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
	
	
	
	public List<PostSearchResult> search(String p_keywords, int p_pageIndex, int p_pageSize, int p_maxCount, int p_fragmentSize)
	{
		if (p_pageIndex < 0)
		{
			p_pageIndex = 0;
		}
		if (p_pageSize < 0)
		{
			p_pageSize = 0;
		}
		
		List<PostSearchResult> results = new ArrayList<PostSearchResult>();
		Query query = null;
		try
		{
			query = _queryParser.parse(p_keywords);
		}
		catch (ParseException e)
		{
			return results;
		}
		
		try
		{
			query.rewrite(_indexReader);
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}
		
		try
		{
			TopDocs hits = _indexSearcher.search(query, p_maxCount);
			
			if (p_pageSize > 0 && p_pageIndex > 0)
			{
				int index = p_pageIndex * p_pageSize;
				ScoreDoc scoreDoc = hits.scoreDocs[index - 1];
				hits = _indexSearcher.searchAfter(scoreDoc, query, p_pageSize);
			}
			
			for (int i = 0; i < hits.scoreDocs.length && i < p_pageSize; i++) {  
				  
				ScoreDoc scoreDoc = hits.scoreDocs[i];  
		        Document doc = _indexSearcher.doc(scoreDoc.doc);
		        PostSearchResult result = new PostSearchResult(doc);
		        
		        
		        SimpleHTMLFormatter simpleHTMLFormatter = new SimpleHTMLFormatter(  
		                "<span class='keyword'>", "</span>");		        
		        Highlighter highlighter = new Highlighter(simpleHTMLFormatter, new QueryScorer(query));  
		        Fragmenter fragmenter = new SimpleFragmenter(p_fragmentSize);  
		        highlighter.setTextFragmenter(fragmenter);
		        
		        
		        // 内容
		        String content = doc.get("contentText");
		        content = content.replaceAll((char)160 + "", "").replaceAll("　", "");
		        TokenStream tokenStream = getDefaultAnalyzer().tokenStream("contentText", new StringReader(content));  
		        String highlightText;
				highlightText = highlighter.getBestFragment(tokenStream, content);
				if (StringUtil.notNullOrEmpty(highlightText))
				{
					result.setSummary(highlightText);
				}
				else
				{
					if  (content.length() > p_fragmentSize)
					{
						result.setSummary(content.substring(0, p_fragmentSize));
					}
					else
					{
						result.setSummary(content);
					}
				}
				
				
		        // 标题
		        String title = doc.get("title");
		        tokenStream = getDefaultAnalyzer().tokenStream("title", new StringReader(title));  
		        highlightText = highlighter.getBestFragment(tokenStream, title);  
		        if (StringUtil.notNullOrEmpty(highlightText))
				{
		        	result.setTitle(highlightText);
				}
		        else
		        {
		        	result.setTitle(title);
		        }
		        
		        results.add(result);
		    }  
		}
		catch (IOException e)
		{
			e.printStackTrace();
		}  
		catch (InvalidTokenOffsetsException e)
		{
			e.printStackTrace();
		} 
		
		return results;
	}
	
	public List<PostSearchResult> search(String p_keywords, int p_maxCount, int p_fragmentSize)
	{
		return search(p_keywords, 0, 0, p_maxCount, p_fragmentSize);
	}
	
	


	private Document _generateDocumentFromVO(PostEntity p_po)
	{
		Document document = new Document();
		document.add(new Field("id", p_po.getId(), Store.YES, Index.NOT_ANALYZED));
		document.add(new Field("updateTime", String.valueOf(p_po.getUpdateTime().getTime()), Store.YES, Index.NOT_ANALYZED));
		if (StringUtil.notNullOrEmpty(p_po.getSource()))
		{
			document.add(new Field("source", p_po.getSource(), Store.YES, Index.NOT_ANALYZED));
		}
		if (StringUtil.notNullOrEmpty(p_po.getPhotoURL()))
		{
			document.add(new Field("photoURL", p_po.getPhotoURL(), Store.YES, Index.NOT_ANALYZED));
		}

		
		String text = _htmlToText(p_po.getContentText());
		if (StringUtil.notNullOrEmpty(text))
		{
			document.add(new Field("contentText", text, Store.YES, Index.ANALYZED));
		}
		if (StringUtil.notNullOrEmpty(p_po.getTitle()))
		{
			document.add(new Field("title", p_po.getTitle(), Store.YES, Index.ANALYZED));
		}
		return document;
	}

	private String _htmlToText(String p_html)
	{
		org.jsoup.nodes.Document htmlDoc = Jsoup.parse(p_html);
		String text = htmlDoc.text();
		return text;
	}
}
