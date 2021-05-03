<%-- 
    Document   : signin
    Created on : Feb 26, 2021, 10:05:23 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>nguyen van huy</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>


        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
        <!--        <link href="../Css/formlogin.css" rel="stylesheet" type="text/css"/>-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css" integrity="sha512-+4zCK9k+qNFUR5X+cKL9EIR+ZOhtIloNl9GIKS57V1MyNsYpYcUrUeQc9vNfzsWfV28IaLL3i96P9sdNyeRssA==" crossorigin="anonymous" />
        <script src="/Js/ShowMess.js"></script>
        <link href="Css/formlogin.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <style>

        </style>
        <div id="toast"></div>
        <div class="mainfun">
            <div class="main">
                <!-- create layount left -->
                <div class="left">
                    <!-- create left have logo and coopy right -->
                    <div class="logoAndCoppy">
                        <i class="fab fa-facebook"></i>
                        <div class=" icon icon--facebook">
                        </div>
                        </i>
                        <i class="fas fa-envelope"></i>
                        <div class="icon icon--email">
                        </div>
                        </i>
                        <i class="fas fa-phone"></i>
                        <div class=" icon icon--phone">

                        </div>
                        <div class="dropdown">
                            <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Contact ME 
                            </button>
                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                <a class="dropdown-item" href="https://www.facebook.com/huy.nguyenvan.7543653/">Facebook</a>
                                <a class="dropdown-item" href="#">Email : huy465773@gmail.com</a>
                                <a class="dropdown-item" href="#">Phone :0943189438</a>
                            </div>
                        </div>
                        <div class="content">
                            <h1 style="font-family: Arial Black"> <a href="Home">Ktna</a></h1>
                        </div>

                        <!-- <div class="coppy">
                            <p style="color: chocolate; ">Contact ME </p>
                            <a class="email" style="color: rgb(245, 181, 179);" href="">
                        huy465773@gmail.com
                    </a>
                            <br>
                            <a href="https://www.facebook.com/huy.nguyenvan.7543653/" class="facebook">Facebook</a><br>
                            <a href="" class="phone">Phone :0943189438</a>
                        </div> -->

                    </div>
                    <!-- tao 2 nut login vaf sign up -->
                    <div class="loginleft">
                        <p class="signinleft" style="display: none;" id="123" onclick="hideIn()">Login</p>
                        <p class="signupleft" onclick="hideUp()" id="321">Sign up</p>
                    </div>
                    <div class="boll"></div>

                </div>
                <!-- create layount right -->
                <div class="right">
                    <!--                <img src="../img/large.png" alt-->
                    <!--<img src="../img/large.png" class="logo" style="width: 100%"  alt=""/>-->
                    <img src="img/large.png" class="logo" style="width: 100%" alt=""/>
                    <!--                <img src="/img/Img/large.png" alt="" class="logo">-->
                    <!-- create form login -->
                    <%
                        Cookie[] list = request.getCookies();
                        String rem = "";
                        if (list.length != 0) {
                            for (int i = 0; i < list.length; i++) {
                                if (list[i].getName().equals("rem")) {
                                    rem = list[i].getValue();
                                }
                            }
                        }
                    %>
                    <div class="signin " id="signin1">
                        <form action="signin" method="post">
                            <input type="text" name="username"  value="${requestScope.username}" class="input username" placeholder="Username">
                            <input type="password" name="password" value="${requestScope.pass}" class="input password" placeholder="Password"><br>
                            <input type="checkbox" name ="rem"

                                   <%= "ON".equals(rem.trim()) ? "checked='checked'" : ""%>  value="ON" >
                            <label for="">Remenber Password</label>
                            <br>
                            <input type="submit" value="Login" onclick="showErrorToast();" class="btn btn--danger" id="signin1">
                        </form>
                    </div>
                    <!-- create form sign up-->
                    <div class="signup" id="signup1" style="display: none;">
                        <form action="signup" method="post">
                            <input type="text" name="fullname" class=" input fullname" placeholder="Full Name">
                            <input type="text" name="username" class="input username" placeholder="Username">
                            <input type="email" name="email" class="input email" placeholder="Email">
                            <input type="password"  name="password" class="input password" placeholder="Password">
                            <input type="password" name="repassword" class="input repassword" placeholder="repassword">
                            <br>
                            <input type="submit" value="Sign Up" onclick="showSuccessToast();" class="btn btn--success" id="signup1">
                        </form>


                    </div>

                </div>
            </div>

        </div>
        <div class="end">
        </div>
        <div class="logo-left">
            <a class="navbar-brand" href="#">
                <p>${requestScope.error}</p>
            </a>
        </div>

        <script>
            function showSuccessToast() {
                toast({
                    title: "Thành công!",
                    message: "Bạn đã đăng ký thành công tài khoản tại Ghippi.",
                    type: "success",
                    duration: 5000
                });
            }

            function showErrorToast() {
                toast({
                    title: "thông tin của bạn đúng",
                    message: "chào mừng bạn đã đến với trang web của Ghippi.",
                    type: "info",
                    duration: 5000
                });
            }

            function hideIn() {
                alert("hello")
                document.getElementById('signin1').style.display = "block";
                document.getElementById('signup1').style.display = "none";
                document.getElementById('123').style.display = "none";
                document.getElementById('321').style.display = "block";
            }

            function hideUp() {
                alert("hello111111")
                document.getElementById('signup1').style.display = "block";
                document.getElementById('signin1').style.display = "none";
                document.getElementById('123').style.display = "block";
                document.getElementById('321').style.display = "none";
            }
        </script>
    </body>

</html>
