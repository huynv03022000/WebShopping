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
      
        <link href="Css/Home.css" rel="stylesheet" type="text/css"/>
        <script src="HomeJS.js" type="text/javascript"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <style>
             @media (min-width: 1200px) {
                 .row .col-md-4 {
                    max-width: 20%;
                }
            }
            .product-grid3 .product-image3 img{
                border-radius: 20px; 
                width: 280px;
                height: 280px;
            }
            .col-sm-3{
                margin-bottom: 50px;
            }
           
        </style>
        <div class="container-fluid">
            <hr>
            <h3 style="margin-left: 45%;font-size: 40px" class="h3">  ${requestScope.Mes} </h3>
            <div class="row">

                <c:forEach items="${list}" var="o">
                    <div class="card text-center col-12 col-sm-6 col-md-4 col-lg-3">
                        <div class="product-grid3">
                            <div class="product-image3">
                                <a href="detail?id=${o.id}&&categori=${o.CID}">
                                    <img class="pic-1"src="${o.img}" alt=""/>
                                    <img class="pic-2" src="${o.img}" alt=""/>
                                </a>
                                <ul class="social">
                                    <li><a href="detail?id=${o.id}&&categori=${o.CID}"><i class="fa fa-shopping-bag"></i></a></li>
                                    <li><a href="detail?id=${o.id}&&categori=${o.CID}"><i class="fa fa-shopping-cart"></i></a></li>
                                </ul>
                                <span class="product-new-label">${o.id}</span>
                            </div>
                            <div class="product-content">
                                <h3 class="title"><a href="#">${o.name}</a></h3>
                                <div class="price">
                                    ${o.price}
                                    <span>${o.price*1.2} VND</span>
                                </div>
                                <ul class="rating">
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star"></li>
                                    <li class="fa fa-star disable"></li>
                                    <li class="fa fa-star disable"></li>
                                </ul>
                            </div>
                        </div>
                    </div>  
                </c:forEach>


            </div>

        </div>
        <%
            int num = (Integer) request.getAttribute("num");
        %>
        <div class="pagination" style="font-size: 20px; margin-left: 42%;margin-top: 30px"> 
            <ul style="display: flex; margin-left: 40%">
                <%                    for (int j = 1;
                            j <= num;
                            j++) {
                %>
                <li style="list-style: none ;text-align: center;margin-right: 10px ;
                    width: 25px;
                    height: 25px;
                    background-color: #ccffcc;
                    text-align: center;
                    margin-top: 5px;
                    color: white;"class=""><a style="width: 30px;height: 30px" href="product?page=<%= j%>&&categori=${categori}"><%= j%></a></li>
                    <%
                        }
                    %>

                <i style="margin-top: 10px"  class="fa fa-arrow-right"></i>
            </ul>
        </div>
        <hr>

        <%@include file="footer.jsp"%>
    </body>
</html>
