<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="com.example.DatabaseConnection" %>
<!DOCTYPE html>
<html>
<head>
    <title>ユーザー登録</title>
</head>
<body>
    <h2>新規ユーザー登録</h2>
    <form action="registerServlet" method="post">
        <label for="username">ユーザー名:</label>
        <input type="text" name="username" required><br>
        <label for="password">パスワード:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="登録">
    </form>
    <a href="login.jsp">ログインはこちら</a>
</body>
</html>
