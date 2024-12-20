<%-- 
    Document   : apply_course.jsp
    Created on : 11 Aug, 2024, 4:25:25 PM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Apply Course</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body style="background-image: url('images/back11.jpg');background-size: cover;">
        <div class="container">
            <h1 class="alert alert-info" style="width:500px;text-align: center;">New Course Apply Form </h1>
            <form action="" method="post">
                <div class="row">
                    <div class="col-md-6">
                        Your Apply Id:<br/>
                        <input type="text" name="apply_id" value="<% out.println(request.getParameter("id")); %>" readonly="false" class="form-control">
                     
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        Select Your Course:<br>
                        <select class="form-control" name="course">
                            <option value="0">select course</option>
                            <%
                                Connection conn;
                                Statement stmt;
                                ResultSet rest;
                                try{
                                    Class.forName("com.mysql.jdbc.Driver");
                                    conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                                    String query1="select * from addcourse";
                                    stmt=conn.createStatement();
                                    rest=stmt.executeQuery(query1);
                                    while(rest.next()){
                                        %>
                                        <option value="<%out.println(rest.getString("coursename"));%>"><%out.println(rest.getString("coursename"));%></option>
                                    <%}
                                }
                                catch(Exception ex1){
                                    out.println("error occured"+ex1.getMessage());
                                }
                            %>
                        </select>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <button type="submit" name="apply_course_button" class="btn btn-danger" style="border-radius: 20px;">Submit</button>
                    </div>
                </div>
            </div>
                            <%
                                if(request.getParameter("apply_course_button")!=null){
                                    String s_id=request.getParameter("apply_id");
                                    String course=request.getParameter("course");
                                    try{
                                        Class.forName("com.mysql.jdbc.Driver");
                                        conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                                        String query2="insert into apply_course(sid,courseName)values('"+s_id+"','"+course+"')";
                                        stmt=conn.createStatement();
                                        int count=stmt.executeUpdate(query2);
                                        if(count==1){
                                            out.println("apply successful");
                                        }
                                    }
                                    catch(Exception e1){
                                        out.println("error occured"+e1.getMessage());
                                    }
                                }
                                
                                
                                
                                %>
    </body>
</html>
