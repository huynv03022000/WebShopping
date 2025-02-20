<%-- 
    Document   : Signup
    Created on : Jun 20, 2021, 9:33:52 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
    <head>
        <title>Creative Colorlib SignUp Form</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Custom Theme files -->
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!-- //Custom Theme files -->
        <!-- web font -->
        <link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
        <link href="Css/signup.css" rel="stylesheet" type="text/css"/>
        <!-- //web font -->
    </head>
    <body>
        <!-- main -->
        <div class="main-w3layouts wrapper">
            <h1>Creative SignUp Form</h1>
            <div class="main-agileinfo">
                <div class="agileits-top">
                    <form action="signup" method="post">
                        <input class="text" type="text" name="username" placeholder="Username" required="">
                        <input class="text email" type="email" name="email" placeholder="Email" required="">
                        <input class="text" type="password" id="pass" name="password" placeholder="Password" required="">
                        <input class="text w3lpass" id="repass" type="password" oninput="myFunction()" name="repassword" placeholder="Confirm Password" required="">
                        <input class="text" type="text" name="phone" id="phone" oninput="validatePhone()" placeholder="NumberPhone" required="">
                        <div class="wthree-text">
                            <label class="anim">
                                <input type="checkbox" name="Check"class="checkbox" required="">
                                <span>I Agree To The Terms & Conditions</span>
                            </label>
                            <div class="clear"> </div>
                        </div>
                        <input type="submit" id="Summit" value="SIGNUP">
                    </form>
                    <p>Don't have an Account? <a href="#"> Login Now!</a></p>
                </div>
            </div>
            <!-- copyright -->
            <div class="colorlibcopy-agile">
                <p>© 2018 Colorlib Signup Form. All rights reserved | Design by <a href="https://colorlib.com/" target="_blank">Colorlib</a></p>
            </div>
            <!-- //copyright -->
            <ul class="colorlib-bubbles">
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <!-- //main -->
        <script>
            function myFunction() {
                var pass = document.getElementById("pass").value;
                var repass = document.getElementById("repass").value;
               if(pass===repass){
                   document.getElementById("Summit").style.display="block";
                   
               }else{
                       
                     document.getElementById("Summit").style.display="none";
               }
            }
             function validatePhone() {
                var phone = document.getElementById("phone").value;
               var regex = /((09|03|07|08|05)+([0-9]{8})\b)/g;
               if((regex.test(phone) == true)){
                   document.getElementById("Summit").style.display="block";
                   
               }else{
                       
                     document.getElementById("Summit").style.display="none";
               }
            }
            
            
        </script>
    </body>
</html>