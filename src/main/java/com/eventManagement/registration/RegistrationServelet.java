package com.eventManagement.registration;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class RegistrationServelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC database connection details
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/event";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve the registration form data
        String name = request.getParameter("name");
        String uname = request.getParameter("uname");
        String uemail = request.getParameter("uemail");
        String role = request.getParameter("role");
        String unumber = request.getParameter("unumber");
        String upass = request.getParameter("upass");

        // Perform database operations
        try {
            // Create a connection to the database
            Connection conn = DriverManager.getConnection(JDBC_URL, JDBC_USERNAME, JDBC_PASSWORD);

            // Prepare the SQL statement for inserting user registration data
            String sql = "INSERT INTO users (name, uname, uemail, role, unumber, upass) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, uname);
            statement.setString(3, uemail);
            statement.setString(4, role);
            statement.setString(5, unumber);
            statement.setString(6, upass);

            // Execute the SQL statement
            int rowsInserted = statement.executeUpdate();

            // Close the database resources
            statement.close();
            conn.close();

            // Check if the data was successfully inserted
            if (rowsInserted > 0) {
                // Registration successful, redirect to a success page
                response.sendRedirect("registration-success.jsp");
            } else {
                // Registration failed, redirect to an error page
                response.sendRedirect("registration-error.jsp");
            }
        } catch (SQLException e) {
            // Handle any database errors
            e.printStackTrace();
            response.sendRedirect("registration-error.jsp");
        }
    }
}
