<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.example.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>ログイン</title>
</head>
<body>
    <h2>ログイン</h2>
    <form action="loginServlet" method="post">
        <label for="username">ユーザー名:</label>
        <input type="text" name="username" required><br>
        <label for="password">パスワード:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="ログイン">
    </form>
    <a href="register.jsp">新規登録はこちら</a>
</body>
</html>