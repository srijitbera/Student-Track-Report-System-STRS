<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Logout</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<div class="container">
    <script type="text/javascript">
        alert("You have been logged out.");
        window.location.href = 'loginForm.jsp';
    </script>
    <%
        HttpSession s = request.getSession();
        if (s.getAttribute("sid") != null) {
            s.invalidate();
            response.sendRedirect("loginForm.jsp");
        } 
    %>
    
</div>
</body>
</html>
