<%-- 
    Document   : loginForm
    Created on : 27 Jul, 2024, 8:19:16 PM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="styles1.css">
<style type="text/css">
    body{
        background: rgb(238,174,202);
        background: radial-gradient(circle, rgba(238,174,202,1) 0%, rgba(168,200,237,1) 100%);
    }
    #btn{
        size: 500px;
        border-radius: 50px;
        text-align: center;
        margin: auto;
    }
    #heading{
        text-align: center;
    }
    #img{
        width: 600px;
        height: auto;
        align: center;
    }   
</style>
    </head>
    <body>
        <div class="container-fluied">
            <nav class="navbar">
                <div class="logo">Student Track Report System</div>
                    <ul class="nav-links">
                        <li><a href="index.jsp">Home</a></li>
                        <li><a href="loginForm.jsp">Student Login</a></li>
                        <li><a href="adminlogin.jsp">Admin Login</a></li>
                    </ul>
                <div class="menu-icon" onclick="toggleMenu()">
                    ☰
                </div>
            </nav>
        </div>
            <div class="container">
            <form id="frm" action="" method="post" class="alert-secondary" style="border-radius: 30px; ">
                <div class="row">
                    <div class="col-md-6">
                        <img id="img" src="images/stlogin.png" alt="error pic">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h2 id="heading"><u>Student Login</u></h2>
                    </div>
                </div> 
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Student Id:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
                            <input type="text" name="sid" class="form-control" placeholder="Enter your student id" required="">
                        </div>
                    </div>    
                </div>
                <br>
                 <div class="row">
                    <div class="col-md-6">
                        <label>Password:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa" aria-hidden="true"></i></span>
                            <input type="password" name="pass1" class="form-control" placeholder="Enter your password" required="">
                        </div>
                    <div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <button id="btn" type="submit" name="btn1" class="btn btn-warning">Login</button>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <p>Not Registered? <a href="registerForm.jsp" class="btn btn-link">Register</a></p>
                    </div>
                </div>
                <br>
            </form>
        </div>
        <%
            if(request.getParameter("btn1")!=null){
                try{
                    String sid=request.getParameter("sid");
                    String password=request.getParameter("pass1");
                    Connection conn;
                    Statement stmt;
                    ResultSet res;
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                    String sql_q1="select * from stu_table";
                    stmt=conn.createStatement();
                    res=stmt.executeQuery(sql_q1);
                    while(res.next()){
                        if(res.getString("S_Id").equals(sid) && res.getString("Password").equals(password))
                        {
                            HttpSession s=request.getSession();
                            s.setAttribute("sid", sid);
                            response.sendRedirect("studashboard.jsp");
                        }
                        
                    }
                    out.println("<script>alert('unsuccess login!')</script>");
                    
                }
                catch(Exception ex){
                    out.println("Error occur:"+ex.getMessage());
                }
            }
        %>
    </body>
</html>
