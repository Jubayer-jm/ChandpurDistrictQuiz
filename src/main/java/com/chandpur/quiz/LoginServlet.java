package com.chandpur.quiz;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    protected void doPost(
            HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        String sql =
                "SELECT * FROM users WHERE username = ? AND password = ?";

        try {

            Connection connection =
                    DatabaseConnection.getConnection();

            PreparedStatement statement =
                    connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet resultSet =
                    statement.executeQuery();

            if (resultSet.next()) {

                // Save username in session
                request.getSession().setAttribute("username", username);

                // Go to quiz page
                response.sendRedirect("quiz.jsp");

            } else {

                response.setContentType("text/html");

                response.getWriter().println(
                        "<h1>Login Failed!</h1>" +
                                "<p>Invalid username or password.</p>" +
                                "<a href='index.jsp'>Try Again</a>"
                );
            }

            resultSet.close();
            statement.close();
            connection.close();

        } catch (Exception e) {

            response.setContentType("text/html");

            response.getWriter().println(
                    "<h1>Database Error!</h1>" +
                            "<p>" + e.getMessage() + "</p>"
            );
        }
    }
}

