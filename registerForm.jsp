<%-- 
    Document   : sturegister.jsp
    Created on : 12 Aug, 2024, 11:03:15 AM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Register</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body{
        background: rgb(233,143,231);
        background: linear-gradient(214deg, rgba(233,143,231,1) 35%, rgba(162,235,231,1) 76%);
    }
    #btn{
        size: 500px;
        border-radius: 50px;
        text-align: center;
        margin: auto;
        
    }
    #img{
        width: 200px;
        height: auto;
        align: center;
    }
</style>
    </head>
    <body>
        <div class="container">
            <form action="registersystem" method="post">
                <div class="row">
                    <div class="col-md-6">
                        <img id="img" src="images/sturegistrer.png" alt="error pic">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <h2 id="heading"><u>Student Register</u></h2>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Student Name:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-user fa"></i></span>
                            <input type="text" class="form-control" name="sname" placeholder="Enter student name" required="">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Stream:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-book"></i></span>
                            <select name="stream" class="form-control">
                                <option value="none"></option>
                                <option value="BA">BA</option>
                                <option value="B.Com">B.Com</option>
                                <option value="B.Sc">B.Sc</option>
                                <option value="BCA">BCA</option>
                                <option value="BBA">BBA</option>
                                <option value="LLB">LLB</option>
                            </select>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>City:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-map-marker"></i></span>
                            <select name="city" class="form-control">
                                <option value="none"></option>
                                <option value="Kolkata">Kolkata</option>
                                <option value="Mumbai">Mumbai</option>
                                <option value="Chennai">Chennai</option>
                                <option value="Delhi">Delhi</option>
                                <option value="Bengalore">Bengalore</option>
                                <option value="Hydrabad">Hydrabad</option>
                            </select>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Gender:</label><br>
                        <input style="height:20px; width: 20px;" type="radio" name="gender" value="Male"><lable>Male</lable>
                        <input style="height:20px; width: 20px;" type="radio" name="gender" value="Female"><lable>Female</lable>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Phone No:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-phone fa"></i></span>
                            <input type="text" class="form-control" name="phno" placeholder="Enter student phone no" required="">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Student Email Id:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-envelope-square"></i></span>
                            <input type="email" class="form-control" name="email" placeholder="Enter student email id" required="">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <label>Password:</label><br>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="fa fa-lock fa"></i></span>
                            <input type="password" class="form-control" name="pass1" placeholder="Create your own password" required="">
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <button id="btn" type="submit" name="btn1" class="btn btn-danger">Register</button>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class="col-md-6">
                        <p>Already Registered? <a href="loginForm.jsp" class="btn btn-link">Login</a></p>
                    </div>
                </div>
            </form>
        </div>
    </body>
</html>
