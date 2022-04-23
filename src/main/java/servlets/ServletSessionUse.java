package servlets;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.concurrent.atomic.AtomicInteger;

@WebServlet("/session-count")
public class ServletSessionUse extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {

        // Get a reference to the session
        HttpSession session = request.getSession();

        // Initialize the count variable to 1
        int tempCount = 1;

        // Get or create counter attribute
        Object att = session.getAttribute("counter");

        AtomicInteger count;
        if (att != null) {
            count = (AtomicInteger) att;
            tempCount = count.incrementAndGet();
        } else {
            count = new AtomicInteger(1);
            session.setAttribute("counter", count);
        }

        // Report the current count
        response.getWriter().println("Servlet Cont = " + tempCount);

    }
}
