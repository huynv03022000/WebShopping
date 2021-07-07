<%-- 
    Document   : header
    Created on : Apr 9, 2021, 11:13:11 AM
    Author     : Admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
        <script src="HomeJS.js" type="text/javascript"></script>
        <title>JSP Page</title>
            <link href="Css/Home.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="header-contact ">
            <div class="col-12 text-center">
                <p>Hotline Mua hàng: </p>
                <span>0943189438</span>
                <p> Hotline CSKH :</p>
                <span>0943189438</span>
                <p> Chat CSKH :</p>
                <a href="https://www.facebook.com/huy.nguyenvan.7543653/">Facebok</a>
                <a href="Admin.jsp">Admin</a>

            </div>
        </div>
        <div class="header-center container">
            <div class="header-center-img">
                <div class="header-img">

                    <img src="img/logo.png" alt=""/>
                </div>
                <div class="header-center-icon">
                    <div class="header-control">
                        <div class="laptop" >
                            <a href="login">
                                <i class="fas fa-user-circle"></i>
                            </a>
                            <div class="d-flex justify-content-center h-100">
                                <div class="searchbar" >
                                    <!--<form action="searchProduct">-->
                                    <input class="search_input" type="text" id="searchInput" name="search" placeholder="Search...">
                                    <a  class="search_icon" ><i  class="fas fa-search" onclick="search()"></i></a>
                                    <!--<input type="submit" value="search">--> 
                                    <!--</form>-->
                                </div>
                            </div>

                            <a href="addCart" class="icon-cart position-relative">
                                <i class="fas fa-shopping-bag"></i>
                                <span class="count-cart">
                                </span>
                            </a>
                        </div>
                        <a href="" class="icon-menu-mobile d-lg-none">
                            <i class="fas fa-bars"></i>
                        </a>
                    </div>
                </div>
            </div>

            <div class="bs-example">
                <div class="btn-group">
                    <button type="button" class="btn">
                        <a style="text-decoration: none" href="Home.jsp">Trang Chủ</a>
                    </button>
                </div>
                <div class="btn-group">
                    <!-- <button type="button" class="btn btn">Action</button> -->
                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Áo Nam
                    </button>
                    <div class="dropdown-menu">
                        <a href="product?categori=1" class="dropdown-item">Sơ Mi</a>
                        <a class="dropdown-item" href="product?categori=2">Áo Phông</a>
                        <a class="dropdown-item" href="product?categori=3">Áo Phao</a>
                        <a class="dropdown-item" href="product?categori=14">Áo Thể Thao</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Quần Nam
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="product?categori=5">Quần Bò</a>
                        <a class="dropdown-item" href="product?categori=4">Quần Âu</a>
                        <a class="dropdown-item" href="product?categori=6">Quần Joger</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Giày
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="product?categori=7">Giày Thể Thao</a>
                        <a class="dropdown-item" href="product?categori=8">Giày Da</a>
                        <a class="dropdown-item" href="product?categori=10">Giày Convert</a>
                    </div>
                </div>
                <div class="btn-group">

                    <button type="button" class="btn btn dropdown-toggle dropdown-toggle-split" data-toggle="dropdown">
                        Phụ Kiện
                    </button>
                    <div class="dropdown-menu">
                        <a href="product?categori=11" class="dropdown-item">Vi Da</a>
                        <a href="product?categori=12" class="dropdown-item">Thắt Lưng</a>
                        <a href="product?categori=13" class="dropdown-item">Đồng Hồ</a>

                    </div>
                </div>
                <div class="btn-group">
                    <button type="button" class="btn " data-toggle="dropdown">
                        Bộ Thể Thao
                    </button>
                </div>
            </div>
        </div>
        <div class="pn">
            <h1>${requestScope.mes}</h1>
        </div>
        <script>
            window.addEventListener('keyup', (e) => {
                keys.forEach((obj) => {
                    if (obj.keyCode === e.code) {
                        obj.isTriggered = false;
                    }
                });
            });


            //// When the user clicks on the button, scroll to the top of the document

            $(document).ready(function () {
                $(window).scroll(function () {
                    if ($(document).scrollTop() > 50) {
                        $(".header-contact").addClass("scrol");
                    } else {
                        $(".header-contact").removeClass("scrol");
                    }
                });
            });

            function search() {
                var result = document.getElementById("searchInput").value;
                var url = "searchProduct?search=" + result;
                window.location.href = url;
                console.log(url);

            }
        </script>
    </body>
</html>
