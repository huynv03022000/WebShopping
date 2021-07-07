<%-- 
    Document   : Product
    Created on : Apr 9, 2021, 3:06:50 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <link href="Css/login.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <form action="login" method="post">
            <div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
                <div class="card card0 border-0">
                    <div class="row d-flex">
                        <div class="col-lg-6">
                            <div class="card1 pb-5">
                                <div class="row"> <img src="https://i.imgur.com/CXQmsmF.png" class="logo"> </div>
                                <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
                            </div>
                        </div>
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
                        <div class="col-lg-6">
                            <div class="card2 card border-0 px-4 py-5">
                                <div class="row mb-4 px-3">
                                    <h6 class="mb-0 mr-4 mt-2">Sign in with</h6>
                                    <div class="facebook text-center mr-3">
                                        <div class="fa fa-facebook"></div>
                                    </div>
                                    <div class="twitter text-center mr-3">
                                        <div class="fa fa-twitter"></div>
                                    </div>
                                    <div class="linkedin text-center mr-3">
                                        <div class="fa fa-linkedin"></div>
                                    </div>
                                </div>
                                <div class="row px-3 mb-4">
                                    <div class="line"></div> <small class="or text-center">Or</small>
                                    <div class="line"></div>
                                </div>
                                <div class="row px-3"> <label class="mb-1">
                                        <h6 class="mb-0 text-sm">UserName</h6>
                                    </label> <input class="mb-4" type="text" name="username" placeholder="Enter a valid Username" value="${requestScope.username}"> </div>
                                <div class="row px-3"> <label class="mb-1">
                                        <h6 class="mb-0 text-sm">Password</h6>
                                    </label> <input type="password" name="password" value="${requestScope.pass}" placeholder="Enter password"> </div>
                                <div class="row px-3 mb-4">
                                    <div class="custom-control custom-checkbox custom-control-inline"> <input id="chk1" type="checkbox" name="rem" class="custom-control-input" <%= "ON".equals(rem.trim()) ? "checked='checked'" : ""%>  value="ON" > <label for="chk1" class="custom-control-label text-sm">Remember me</label> </div> <a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
                                </div>
                                <div class="row mb-3 px-3"> <button type="submit" class="btn btn-blue text-center">Login</button> </div>
                                <div class="row mb-4 px-3"> <small class="font-weight-bold">Don't have an account? <a class="text-danger ">Register</a></small> </div>
                            </div>
                        </div>

                    </div>
                    <div class="bg-blue py-4">
                        <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2019. All rights reserved.</small>
                            <div class="social-contact ml-4 ml-sm-auto"> <span class="fa fa-facebook mr-4 text-sm"></span> <span class="fa fa-google-plus mr-4 text-sm"></span> <span class="fa fa-linkedin mr-4 text-sm"></span> <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span> </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>

       
        <%@include file="footer.jsp"%>
    </body>
</html>
