package com.example;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        try (Connection dbConnection = DatabaseConnection.getConnection()) {
            String sql = "SELECT id FROM users WHERE username = ? AND password = ?";
            try (PreparedStatement stmt = dbConnection.prepareStatement(sql)) {
                stmt.setString(1, username);
                stmt.setString(2, password); // パスワード暗号化後も同様に
                ResultSet rs = stmt.executeQuery();

                if (rs.next()) {
                    int userId = rs.getInt("id");
                    request.getSession().setAttribute("userId", userId);
                    response.sendRedirect("index.jsp");
                } else {
                    response.sendRedirect("login.jsp?error=invalid");
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

