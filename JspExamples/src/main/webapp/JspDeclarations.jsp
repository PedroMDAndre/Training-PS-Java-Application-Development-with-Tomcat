<!-- Demonstrates the use of JSP Declarations with methods -->

<%@ page import="java.util.Locale, javax.servlet.http.HttpServletRequest" %>
<HTML>
	<BODY>
		<%!	
			public String getGreeting(HttpServletRequest request){
	
				// Determine Language to use
				Locale locale = request.getLocale();
				String languageTag = locale.toLanguageTag().substring(0,2);
		
				// Determine Greeting language
				String greeting;
				switch(languageTag){
					case "fr": // French
						greeting = "Bonjour";
						break;
					case "de": // German
						greeting = "Guten Tag";
						break;
					default: // anything else
						greeting = "Hello";
						languageTag = "en";
				}
			}
		%>		
		<H1>${param.name} <%= getGreeting(request) %></H1>
		
	</BODY>
</HTML>

