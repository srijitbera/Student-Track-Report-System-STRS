<%-- 
    Document   : studashboard
    Created on : 4 Aug, 2024, 6:00:16 PM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Dashboard</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css">
    </head>
    <body>
        
        <div class="row">
        <!-- <div class="col-md-12">
            <h4>Dashboard</h4>
        </div>         -->
    <!-- dashboard header start -->
    <div class="col-md-12 p-0">
    <div class="breadcome-area">
        <div class="container-fluid">
            <div class="row dashboard_header">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="breadcome-list">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <div class="breadcome-heading">
                                    
                                </div>
                            </div>
                            <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                <ul class="breadcome-menu">
                                    <li>
                                        <a href="#">Home</a>
                                        <span class="bread-slash">/</span>
                                    </li>
                                    <li>
                                        <span class="bread-blod">Dashboard</span>
                                    </li>
                                    <br>
                                    <br/>
                                    <li>
                                        <span class="bread-blod"><a href="logout.jsp"><button type="button" class="btn-danger" style="border-radius: 20px;">Logout</button</a></span>
                                    </li>
                                    
                                </ul>
                                <%
            HttpSession s=request.getSession();
            if(s.getAttribute("sid")!=null)
            {
                out.println("<div style='color:white;font-size:24px;'>");
                out.println("Welcome:"+s.getAttribute("sid"));
                out.println("</div>");
            }
            else
            {
                s.invalidate();
                response.sendRedirect("loginForm.jsp");
            }
            
        %>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <div style="margin-left: 50px;">
                        <a href="apply_course.jsp?id=<% out.println(s.getAttribute("sid")); %>"><button type="button" name="btn1" class="btn btn-primary" style="width: 230px;">Apply Course</button></a>
                        <br>
                        <p class="p p-warning p-hover" style="font-size: 16px;">Click to apply your course</p>
                    </div>
                    <br>
                    <div style="margin-left: 50px;">
                        <button type="button" name="btn1" class="btn btn-success" style="width: 230px;" data-toggle="modal" data-target="#viewcourse">View Course</button>
                     <br>
                        <p class="p p-warning p-hover" style="font-size: 16px;">Click to view your course</p>
                    </div>
                    <br>
                    <div style="margin-left: 50px;">
                        <button type="button" name="btn1" class="btn btn-warning" style="width: 230px;">Study Notes</button>
                        <br>
                        <p class="p-hover" style="font-size: 16px;">Click to get study notes</p>
                    </div>
                    <br>
                    <div style="margin-left: 50px;">
                        <button type="button" name="btn1" class="btn btn-secondary" style="width: 230px;">Your Details</button>
                        <br>
                        <p class="p-hover" style="font-size: 16px;">Click to show your details</p>
                    </div>
                    <br>
                    <div style="margin-left: 50px;">
                        <button type="button" name="btn1" class="btn btn-danger" style="width: 230px;">Feedback</button>
                        <br>
                        <p class="p-hover" style="font-size: 16px;">Click to give your feedback</p>
                    </div>
                </div>
                <div class="col-lg-6">
                    <img src="images/studash.png" alt="error pic">
                </div>
            </div>
        </div>
                        
        <div id="viewcourse" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="width: 1100px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title alert alert-danger">View Course</h4>
      </div>
      <div class="modal-body">
      <%
          Connection conn;
          Statement stmt;
          ResultSet rest;
      %>
      <table border="1" class="table table-hover">
               <tr>
                   <th>Student Id</th>
                   <th>Course Name</th>
                   <th>Price</th>
                   <th>Duration</th>
                   <th>Apply Date</th>
               </tr>
               <%
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                   String s1="SELECT apply_course.sid, apply_course.courseName,apply_course.Applydate,addcourse.duration,addcourse.fees FROM apply_course JOIN addcourse ON apply_course.cid = addcourse.courseId;";
                   
                   stmt=conn.createStatement();
                   rest=stmt.executeQuery(s1);
                   if(rest.next())
                   {
                       
                      %>
                    <tr>
                        <td><% out.println(rest.getString("sid")); %></td>
                        <td><% out.println(rest.getString("coursename")); %></td>
                        <td><% out.println(rest.getString("duration")); %></td>
                        <td><% out.println(rest.getString("fees")); %></td>
                        <td><% out.println(rest.getString("Applydate")); %></td>
                   </tr>
                       
      
                   <%
                       
                       }
}
catch(Exception e1)
{
out.println(e1.getMessage());
}
%>
      </table>
    </body>
</html>
