package gu.common;

import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.impl.HttpSolrClient;

public class SolrJDriver {

	public static String url = "http://localhost:8983/solr/board"; 
	public static HttpSolrClient solr = new HttpSolrClient.Builder(url).build();
	
}