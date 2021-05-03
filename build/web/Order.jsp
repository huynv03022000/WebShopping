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
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstsrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>-->
        <!-- link cua slide bar -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googl/eapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
                            <c:forEach items="${requestScope.list}" var="o">
                                <div class="cart_items">
                                    <ul class="cart_list">

                                        <li class="cart_item clearfix">
                                            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">
                                                 <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Hóa Đơn</div>
                                                    <div class="cart_item_text">  ${o.id}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Date</div>
                                                    <div class="cart_item_text">  ${o.date}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Priice</div>
                                                    <div class="cart_item_text">${o.totalmoney}VND</div>
                                                </div>
                                             
                                                <div class="cart_item_quantity cart_info_col">
                                                    <div class="cart_item_title">Number Phone</div>
                                                    <div class="cart_item_text">${o.phone}</div>
                                                </div>
                                                <div class="cart_item_price cart_info_col">
                                                    <div class="cart_item_title">Address</div>
                                                    <div class="cart_item_text">${o.address}</div>
                                                </div>
                                                <div class="cart_item_total cart_info_col">
                                                    <div class="cart_item_title">Customer Name</div>
                                                    <div class="cart_item_text">${o.cusid}</div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                                <button class="Buil">
                                    <a href="orderdetail?id=${o.id} ">
                                        Chi tiết
                                    </a>
                                </button>
                            </c:forEach>
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
