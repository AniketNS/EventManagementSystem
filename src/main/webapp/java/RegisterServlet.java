import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public RegisterServlet() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm_password");
        String role = request.getParameter("role");

        if (password.equals(confirmPassword)) {
            DBManager dbManager = new DBManager();
            boolean isRegistered = dbManager.registerUser(name, email, phone, password, role);
            dbManager.closeConnection();

            if (isRegistered) {
                response.sendRedirect("index.jsp?page=login&success=1");
            } else {
                response.sendRedirect("index.jsp?page=register&error=1");
            }
        } else {
            response.sendRedirect("index.jsp?page=register&error=2");
        }
    }
}