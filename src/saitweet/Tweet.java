package saitweet;

import java.util.LinkedList;
import java.util.List;

import twitter4j.Query;
import twitter4j.QueryResult;
import twitter4j.Status;
import twitter4j.Twitter;
import twitter4j.TwitterException;
import twitter4j.TwitterFactory;
import twitter4j.conf.ConfigurationBuilder;

public class Tweet {

	public static List<Status> qrTweets;
	
	/*
	 * Extract Twitter data
	 */
	public static void extractTweet(String tweet) throws TwitterException {
		
		ConfigurationBuilder cb = new ConfigurationBuilder();
		
		cb.setDebugEnabled(true);
		cb.setOAuthConsumerKey("74ydo2PwWnePf3X4zBzleNJ2t");
		cb.setOAuthConsumerSecret("KfIjEiPnosHTf1XZieGWXrldtDQWKFFh1jO63dxfjGqYDp2bLd");
		cb.setOAuthAccessToken("2729380164-fQvHtakqqd8Uuwi5BFAGb7bjANsV6FZzMDHfkZg");
		cb.setOAuthAccessTokenSecret("fDBcQDeiaBH1BVUVJ1OduRdsHTs4ozZMScOY8KYqgd0It");
		
		Twitter twitter = new TwitterFactory(cb.build()).getInstance();
		
		//List<String> result = new LinkedList<String>();
		
		Query query = new Query(tweet+" +exclude:retweets");
		query.setCount(3); 	// set tweets per page to 3
		query.setLang("en");
		
		QueryResult qr = twitter.search(query);
		qrTweets = qr.getTweets();
		
		//Preprocessor pp = new Preprocessor();
 		
		System.out.println("Extracted tweets");
		
		for(Status t : qrTweets) {
 			System.out.println(t.getText());
 			//tmp = pp.preprocessDocumentKeepSmiles(t.getText());
 			//tmp = tmp.replaceAll("[\n\r]", "");
 			//System.out.println("\tPreprocessed tweet: "+tmp);
 			//result.add("?,"+Utils.quote(tmp));
 		}
	 }
}
