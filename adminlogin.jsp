<%-- 
    Document   : adminlogin
    Created on : 28 Jul, 2024, 5:20:04 PM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
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
    background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(237,228,94,1) 0%, rgba(0,212,255,1) 100%);
    }
    </style>
    </head>
    <%
        String user="";
        String pass="";
        if(request.getParameter("btn1")!=null)
        {
            user=request.getParameter("username");
            pass=request.getParameter("pass");
            if(user.equals("admin") && pass.equals("12345"))
            {
                response.sendRedirect("dashboard.jsp");
            }
            else
            {
                out.println("<script>alert('Login unsuccess')</script>");
            }
        }
        
        
    %>
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
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <img src="images/images1.jpg" alt="error pic">
                </div>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <form action="" method="post">
                        <div class="form-group">
				<label for="name" class="cols-sm-2 control-label">Username:</label>
                                    <div class="cols-sm-10">
                                        <div class="input-group">
                                            <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true"></i></span>
						<input type="text" class="form-control" name="username" id="username"  placeholder="Enter your Name"/>
						</div>
							</div>
						</div>
                        
                        
                        <div class="form-group">
							<label for="name" class="cols-sm-2 control-label">Password:</label>
							<div class="cols-sm-10">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock fa-lg" aria-hidden="true"></i></span>
									<input type="password" class="form-control" name="pass" id="pass"  placeholder="Enter your Password"/>
								</div>
							</div>
						</div>
                        <br/>
                        <button type="submit" name="btn1" class="btn btn-primary">Login</button>
                        
                               
                    </form>
                        
                </div>
            </div>
        </div>
    </body>
</html>
