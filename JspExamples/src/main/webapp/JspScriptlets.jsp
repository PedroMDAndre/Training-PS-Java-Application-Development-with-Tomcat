<!-- Demonstrates the use of JSP Scriptlet -->

<%@ page import="java.util.Locale" %>
<HTML>
  <BODY>
    <H1>
		<%

			// Get QueryString value
			String name = request.getParameter("name");
			if (name == null) {
				name = "";
			}


			// Determine Language to use
			Locale locale = request.getLocale();
			String languageTag = locale.toLanguageTag().substring(0,2);

			// Determine Greeting language
			String greeting;
			switch (languageTag) {
				case "fr": // French
					greeting = "Bonjour";
					break;
				case "de": // German
					greeting = "Guten Tag";
					break;
                case "pt": // Portuguese
                    greeting = "Bom dia";
                    break;
				default: // anything else
					greeting = "Hello";
					languageTag = "en";
			}

			response.setHeader("Content-Language", languageTag);
		
			// Write greeting to name
			out.println(greeting + " " + name);
			
		%>
    </H1>
  </BODY>
</HTML>
      