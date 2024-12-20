<%-- 
    Document   : index
    Created on : 29 Jul, 2024, 11:44:01 AM
    Author     : SRIJIT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home/STRS</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="styles1.css">
        <script>
            function toggleMenu() {
                const navLinks = document.querySelector('.nav-links');
                navLinks.classList.toggle('active');
            }
        </script>
        <style>
            body{
                background: rgb(191,225,224);
                background: linear-gradient(214deg, rgba(191,225,224,1) 36%, rgba(224,202,185,1) 69%);
            }
            #about-section{
                text-align: center;
            }
            #column {
                float: left;
                width: 33.3%;
                margin-left: 370px;
                padding: 0 8px;
            }
            #card {
                box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
                 margin: auto;
            }
            .container {
                padding: 0 16px;
            }
            #title {
                color: grey;
            }
            #developer_contact_button {
                border: none;
                outline: 0;
                display: inline-block;
                padding: 8px;
                color: white;
                justify-content:  center;
                cursor: pointer;
                width: 150px;
            }
            #developer_contact_button:hover {
                background-color: #555;
            }
            * {
                box-sizing: border-box;
            }
            input[type=text], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            input[type=email], select, textarea {
                width: 100%;
                padding: 12px;
                border: 1px solid #ccc;
                margin-top: 6px;
                margin-bottom: 16px;
                resize: vertical;
            }
            .container {
                border-radius: 5px;
                padding: 10px;
            }
            .column {
                float: left;
                width: 50%;
                margin-top: 6px;
                padding: 20px;
            }
            .row:after {
                content: "";
                display: table;
                clear: both;
            }
            #contactus_button {
                background-color: #29d11b;
                color: white;
                padding: 12px 20px;
                border: none;
                cursor: pointer;
                text-align: center;
                border: none;
                border-radius: 8px;
                width: 150px;
            }
            #contactus_button:hover {
                background-color: #1a751b;
            }
            @media screen and (max-width: 600px) {
            .column, contactus_button {
                width: 100%;
                margin-top: 0;
            }
        }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            
            <nav class="navbar">
                <div class="logo">Student Track Report System</div>
                    <ul class="nav-links">
                        <li><a href="#">Home</a></li>
                        <li><a href="#aboutus">About Us</a></li>
                        <li><a href="loginForm.jsp">Student Login</a></li>
                        <li><a href="adminlogin.jsp">Admin Login</a></li>
                        <li><a href="#contactus">Contact Us</a></li>
                    </ul>
                <div class="menu-icon" onclick="toggleMenu()">
                    ☰
                </div>
            </nav>  
            <div style="padding: 0;">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                        <li data-target="#myCarousel" data-slide-to="3"></li>
                        <li data-target="#myCarousel" data-slide-to="4"></li>
                    </ol>
                    <!-- Wrapper for slides -->
                    <div class="carousel-inner">
                        <div class="item active">
                            <img src="images/carsour7.jpg" alt="Los Angeles" style="width:100%;">
                        </div>
                        <div class="item">
                            <img src="images/carsour5.jpg" alt="Chicago" style="width:100%;">
                        </div>
                        <div class="item">
                            <img src="images/carsour4.jpg" alt="New york" style="width:100%;">
                        </div>
                        <div class="item">
                            <img src="images/carsour8.jpg" alt="New york" style="width:100%;">
                        </div>        
                        <div class="item">
                            <img src="images/carsour9.jpg" alt="New york" style="width:100%;">
                        </div>
                    </div>
                    <!-- Left and right controls -->
                    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="container" id="about-section">
            <section id="aboutus" class="aboutus">
                <h1><strong>About Us</strong></h1>
                <hr>
                <h3>Purpose Of Project</h3>
                <p>Purpose of this project to provide an online and responsive Student Report Tracking System and also gaining an experience on web application project, to show my skill and knowledge on web development.</p>
                <br>
                <h3><u>Meet Our Developer</u></h3>
                <div id="column" class="row">
                    <div id="card">
                        <img src="images/srijit.png" alt="John" style="width:100%; height: 300px;">
                        <div id="container">
                            <h2>Srijit Bera</h2>
                            <p id="title">Web Designer & Developer</p>
                            <p>Hello Sir I am Srijit Bera I am a Web Developer. I am Pursuing BCA 3rd  year at Brainware University.</p>
                            <p>jitbera2003@gmail.com</p>
                            <p><button type="button" name="developer_contact_button" id="developer_contact_button" class="btn btn-success" data-toggle="modal" data-target="#modal1">Contact</button></p>
                            <br>
                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="container" id="contact-section">
            <section id="contactus" class="contactus">
                <div style="text-align:center">
                    <h1><strong>Contact Us</strong></h1>
                </div>
                <hr>
                <div style="text-align:center">
                    <h3>For Contact With Us</h3>
                    <p>If you have any questions, concerns, or require further assistance regarding the student track report system, please don't hesitate to contact our dedicated support team. We are available to provide timely and helpful responses to your inquiries.</p>
                </div>
                <div class="row">
                    <div class="column">
                        <img src="images/form_contact.jpg" style="width:100%">
                    </div>
                    <div class="column">
                        <form action="/action_page.php">
                            <label for="fname">First Name</label>
                            <input type="text" id="fname" name="firstname" placeholder="Your first name..">
                            <label for="lname">Last Name</label>
                            <input type="text" id="lname" name="lastname" placeholder="Your last name..">
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" placeholder="Your email id..">
                            <label for="country">Country</label>
                            <select id="country" name="country">
                                <option value="null">--select your country--</option>
                                <option value="argentina">Argentina</option>
                                <option value="australia">Australia</option>
                                <option value="belarus">Belarus</option>
                                <option value="belgium">Belgium</option>
                                <option value="bhutan">Bhutan</option>
                                <option value="brazil">Brazil</option>
                                <option value="canada">Canada</option>
                                <option value="china">China</option>
                                <option value="denmark">Denmark</option>
                                <option value="egypt">Egypt</option>
                                <option value="finland">Finland</option>
                                <option value="france">France</option>
                                <option value="georgia">Georgia</option>
                                <option value="germany">Germany</option>
                                <option value="hungary">Hungary</option>
                                <option value="iceland">Iceland</option>
                                <option value="india">India</option>
                                <option value="ireland">Ireland</option>
                                <option value="italy">Italy</option>
                                <option value="japan">Japan</option>
                                <option value="malaysia">Malaysia</option>
                                <option value="mexico">Mexico</option>
                                <option value="nepal">Nepal</option>
                                <option value="netherlands">Netherlands</option>
                                <option value="new zealand">New Zealand</option>
                                <option value="portugal">Portugal</option>
                                <option value="romania">Romania</option>
                                <option value="russia">Russia</option>
                                <option value="singapore">Singapore</option>
                                <option value="south korea">South Korea</option>
                                <option value="spain">Spain</option>
                                <option value="turkey">Turkey</option>
                                <option value="ukrain">Ukraine</option>
                                <option value="uk">United Kingdom</option>
                                <option value="usa">United States of America</option>
                            </select>
                            <label for="subject">Subject</label>
                            <textarea id="subject" name="subject" placeholder="Write something.." style="height:170px"></textarea>
                            <br>
                            <br>
                            <button type="button" name="contactus_submit_button" id="contactus_button">Submit</button>
                        </form>
                    </div>
                </div>
            </section>
        </div>  
    </body>
</html>
