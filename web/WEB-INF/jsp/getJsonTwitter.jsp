<%-- 
    Document   : getJsonTwitter
    Created on : 18/06/2013, 01:28:37 PM
    Author     : Weisß
--%>
<%@page import="twitter4j.TwitterException"%>
<%@page import="twitter4j.json.DataObjectFactory"%>
<%@page import="twitter4j.Status"%>
<%@page import="java.util.List"%>
<%@page import="twitter4j.TwitterFactory"%>
<%@page import="twitter4j.Twitter"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<%     Twitter twitter = new TwitterFactory().getInstance();
    try {
        List<Status> statuses = twitter.getUserTimeline();
        String rawJSON = DataObjectFactory.getRawJSON(statuses);
        out.println(rawJSON);

    } catch (TwitterException te) {
        te.printStackTrace();
        out.println("Failed to get timeline: " + te.getMessage());
    }
%>