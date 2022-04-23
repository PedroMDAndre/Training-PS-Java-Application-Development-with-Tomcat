package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Locale;

@WebServlet("/headers")
public class ServletHeaders extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

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

        response.getWriter().println(greeting + " " + name);


    }

}
