<%-- 
    Document   : dashboard
    Created on : 28 Jul, 2024, 5:47:14 PM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
        <div class="container">
            <h1 class="alert alert-success">Welcome to Admin Dashboard</h1>
            <p align="right"><a href="adminlogin.jsp"><button type="button" name="btn1" class="btn btn-danger">Logout</button></a></p>
       
            <button type="button" name="btn1" class="btn btn-primary" data-toggle="modal" data-target="#myModal">Add Course</button>
            <button name="btn2" class="btn btn-success" data-toggle="modal" data-target="#myModal1">View Register</button>
            <button name="btn3" class="btn btn-warning" data-toggle="modal" data-target="#myModal2">View Feedback</button>
            <button name="btn3" class="btn btn-info">View Application</button>
        
        <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Add Course</h4>
      </div>
      <div class="modal-body">
          <form action="add_course" method="post">
          <div class="row">
              <div class="col-md-6">
                  Course Name:<br/>
                  <input type="text" class="form-control" name="cname" required="" placeholder="Course Name">
              </div>
          </div> 
          <div class="row">
              <div class="col-md-6">
                  Duration:<br/>
                  <input type="text" class="form-control" name="duration" required="" placeholder="Course Duration">   
              </div>
          </div> 
          <div class="row">
              <div class="col-md-6">
                  Fees:<br/>
                  <input type="text" class="form-control" name="fees" required="" placeholder="Course Fees">
              </div>
          </div> 
          <br>
          <div class="row">
              <div class="col-md-6">
                  <button type="submit" name="btn1" class="btn btn-danger">Submit</button> 
              </div>
          </div> 
             </div>
      </div>
      
    </div>

  </div>
</div>
      
        
        <!-- Modal -->
<div id="myModal1" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="width: 1100px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title alert alert-danger">View Register</h4>
      </div>
      <div class="modal-body">
          <%
            Connection conn;
            Statement st;
            ResultSet rst;
           %>
           <table border="1" class="table table-hover">
               <tr>
                   <th>SId</th>
                   <th>Student Name</th>
                   <th>Stream</th>
                   <th>City</th>
                   <th>Gender</th>
                   <th>Phone No</th>
                   <th>Email Id</th>
                   <th>Password</th>
                   <th colspan="50%">Action</th>
               </tr>
               <%
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                   String s1="select * from stu_table";
                   st=conn.createStatement();
                   rst=st.executeQuery(s1);
                   while(rst.next())
                   {
                      %>
                    <tr>
                        <th><% out.println(rst.getString("S_Id")); %></th>
                   <th><% out.println(rst.getString("Student_Name")); %></th>
                   <th><% out.println(rst.getString("Stream")); %></th>
                   <th><% out.println(rst.getString("City")); %></th>
                   <th><% out.println(rst.getString("Gender")); %></th>
                   <th><% out.println(rst.getString("Phon_No")); %></th>
                   <th><% out.println(rst.getString("Student_Email")); %></th>
                   <th><% out.println(rst.getString("Password")); %></th>
                   <th>
                       
                       <button type="button" name="btn_edit" class="btn btn-success">Edit</button>
                       <a href="delete_tabledata.jsp?id=<%out.println(rst.getString("Sl_No"));%>"><button type="button" name="btn_delete" class="btn btn-danger">Delete</button></a></th>
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
      </div>
      </div>
      
    </div>

  </div>
</div>
<div id="myModal2" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content" style="width: 1100px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title alert alert-danger">View Feedback</h4>
      </div>
      <div class="modal-body">
          <%
            Connection connec;
            Statement stmt;
            ResultSet res;
           %>
           <table border="2" class="table table-hover">
               <tr>
                   <th>SId</th>
                   <th>Student Name</th>
                   <th>Student Feedback</th>
                   <th>Student Rating</th>
               </tr>
               <%
                   try{
                   Class.forName("com.mysql.jdbc.Driver");
                connec=DriverManager.getConnection("jdbc:mysql://localhost:3306/strsdb","root","");
                   String s1="select * from stu_feedback";
                   stmt=connec.createStatement();
                   res=stmt.executeQuery(s1);
                   while(res.next())
                   {
                      %>
                    <tr>
                        <th><% out.println(res.getString("S_Id")); %></th>
                   <th><% out.println(res.getString("Student_Name")); %></th>
                   <th><% out.println(res.getString("Student_Feedback")); %></th>
                   <th><% out.println(res.getString("Student_Ratting")); %></th>
                   <th>
                       
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
           </div>
      </div>
    </div>
  </div>
</div>
        </div>
    </body>
</html>
