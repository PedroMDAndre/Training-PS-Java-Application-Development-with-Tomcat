<!-- Demonstrates the use of JSP Scriptlet -->

<%@ page import="java.util.Locale" %>
<HTML>
  <BODY>
    <H1>
        <% page import="java.util.Locale" %>
		<%
			
			// Get QueryString value
            String name = request.getParameter("name");
            if (name == null) {
                name = "";
            }

            Locale locale = request.getLocale();
            String languageTag = locale.toLanguageTag().substring(0, 2);

            // Determine Greeting language
            String greeting;
            greeting = switch (languageTag) {
                case "pt" -> "Bom dia";      // Portuguese
                case "fr" -> "Bonjour";      // French
                case "de" -> "Guten Tag";    // German
                default -> {                 // Anything else
                    languageTag = "en";
                    yield "Hello";
                }
            };

            response.setHeader("Content-Language", languageTag);
		
			// Write greeting to name
			out.println(greeting + " " +name);
			
		%>
    </H1>
  </BODY>
</HTML>
      