<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googl/eapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href="Css/Manager.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>

        <%@include file="header.jsp"%>

        <div class="cart_section">
            <div class="container-fluid">
                <div class="row">

                    <div class="col-lg-10 offset-lg-1">
                        <div class="cart_container">
                            <c:forEach items="${requestScope.list}" var="i"> 
                                <div class="cart_items">
                                    <ul class="cart_list">
                                        <li class="cart_item clearfix">
                                            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">


                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Sản Phẩm</div>
                                                    <div class="cart_item_text">${i.oid}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Price</div>
                                                    <div class="cart_item_text">${i.price}VND</div>
                                                </div>
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Name</div>
                                                    <div class="cart_item_text">
                                                        ${i.name}</div>
                                                </div>
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Color</div>
                                                    <div class="cart_item_text">
                                                        ${i.color}</div>
                                                </div> <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">Size</div>
                                                    <div class="cart_item_text">
                                                        ${i.size}</div>
                                                </div>
                                                <div class="cart_item_price cart_info_col">
                                                    <div class="cart_item_title">Ảnh Miêu Tả</div>
                                                    <img style="height: 100px;width: 100px" src="${i.img}">
                                                </div>


                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                            <div class="cart_buttons"> <button type="button" class="button cart_button_clear"><a href="chotdon?id=${requestScope.id}">Chốt Đơn</a></button> </div>
                            <div class="cart_buttons"> <button type="button" class="button cart_button_clear"><a href="Home.jsp">Continue Shopping</a></button> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--Section: Block Content-->


        <%@include file="footer.jsp"%>
        <!--Section: Block Content-->
        <script>
            $(document).ready(function () {
                // MDB Lightbox Init
                $(function () {
                    $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
                });
            });
        </script>
    </body>
</html>
