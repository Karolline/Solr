package gu.common;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.HttpSolrClient;

public class SolrJDriver {
	// https 사용할 경우 SSL 오류 발생
	public static String url = "http://localhost:8983/solr/board"; 
	public static HttpSolrClient solr = new HttpSolrClient.Builder(url).build();
	
}