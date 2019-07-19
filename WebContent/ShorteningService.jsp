<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ page import="java.util.Random" %>
<%@ page import="java.util.HashMap" %>
<%
	String urlConversion  = request.getParameter("url"); 
	String returnUrl = "";	
	returnUrl = urlConversionCheck(urlConversion);
	
%>
{
	"returnUrl" : "<%=returnUrl%>"
}
<%!  
	HashMap<String,String> eHashMap = new HashMap<>();
	HashMap<String,String> dHashMap = new HashMap<>();
	
	String urlEncode(String longUrl) {
	    Random random = new Random();
	    String randCharacter  = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
	    int charLen = 8;
	    char[] shortURL = new char[charLen];
	    
	    for(int i = 0; i < charLen; i++ ) {
	        shortURL[i] = randCharacter.charAt(random.nextInt(randCharacter.length()));
	    }
	    
	    StringBuilder sb = new StringBuilder("http://localhost/");
	    sb.append(new String(shortURL));
		
	    dHashMap.put(longUrl,sb.toString());
	    eHashMap.put(sb.toString(),longUrl);
	    return sb.toString();
	
	}
	
	String urlDecode(String shortUrl) {
	    return dHashMap.get(shortUrl);
	} 
	
	String urlConversionCheck(String url){
		String urlConversion = "";

		if(dHashMap.get(url) == null) {
			if(eHashMap.get(url) == null) {
				urlConversion = urlEncode(url);
			}else{
				urlConversion = eHashMap.get(url);
			}
		}else{
			urlConversion = dHashMap.get(url);
		}
		 return urlConversion;
	}
%>
