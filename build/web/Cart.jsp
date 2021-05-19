<%-- 
    Document   : Cart
    Created on : Apr 20, 2021, 3:42:53 PM
    Author     : Admin
--%>

<%@page import="Modal.Cart"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--        <script src="https://kit.fontawesome.com/yourcode.js" crossorigin="anonymous"></script>-->
        <!-- link cua slide bar -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

        <script src="https://ajax.googl/eapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
        <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
        <link href="Css/giohang.css" rel="stylesheet" type="text/css"/>
        <link href="Css/custom.css" rel="stylesheet" type="text/css"/>
        <link href="Css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .banner-footer-item {
                margin-left: 30px;
                border: 1px #000 solid;
                padding: 10px;
                margin-bottom: 45px;
                display: -ms-flexbox;
                display: flex;
                -ms-flex-wrap: wrap;
                flex-wrap: wrap;
            }
            .banner-footer-item img{
                width: 100px;
                height: 100px;
            }
            .wrapper{
                display: none;

            }
            #checkout{
                display: none;

            }
            .btn-des{
                display: flex;
            }
            .input .text-center {
                display: flex;
            }
            .cart_item_title i {
                font-size: 25px;
                margin: 40px 30px;
            }
            .cart_list{
                padding-left: 10px;
            }
            .cart_item_info{
                width: 700px;
            }
            .cart_info_col{
                width: 150px;

            }
            .cart_item_title{
                width:  150px;
            }
            .cart_item_text{
                width:  150px;
            }   #order{
                display: none;
            }
        </style>
        <%@include file="header.jsp"%>
        <div class="cart_section">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-10 offset-lg-1">
                        <div class="cart_container">

                            <div class="cart_title">Shopping Cart<small> (${size} in your cart) </small></div>
                            <c:set var="o" value="${sessionScope.cart}"/>
                            <c:set var="t" value="0"/>
                            <c:forEach items="${o.items}" var="i"> 
                                <c:set var="t" value="${t+1}"/>   
                                <div class="cart_items">
                                    <ul class="cart_list">
                                        <li class="cart_item clearfix">
                                            <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">


                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">MÃ Sản Phẩm</div>
                                                    <div class="cart_item_text">${i.product.PID}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Price</div>
                                                    <div class="cart_item_text">${i.product.price}VND</div>
                                                </div>
                                                <div class="cart_item_color cart_info_col">
                                                    <div class="cart_item_title">name</div>
                                                    <div class="cart_item_text">

                                                        ${i.product.name}</div>
                                                </div>
                                                <div class="cart_item_name cart_info_col">
                                                    <div class="cart_item_title">Color</div>
                                                    <div class="cart_item_text">${i.color}</div>
                                                </div>
                                                <div class="cart_item_quantity cart_info_col">
                                                    <div class="cart_item_title">Quantity</div>
                                                    <button><a href="process?num=-1&id=${i.product.id}">-</a></button>
                                                    <input type="text" readonly  value="${i.quantity}"/>
                                                    <button><a href="process?num=1&id=${i.product.id}">+</a></button>
<!--                                                    <div class="cart_item_text">${i.quantity}</div>-->
                                                </div>
                                                <div class="cart_item_price cart_info_col">
                                                    <div class="cart_item_title">Ảnh Miêu Tả</div>
                                                    <img style="height: 100px;width: 100px" src="${i.product.img}">
                                                </div>

                                                <div class="cart_item_delete cart_info_col">
                                                    <div class="cart_item_title"><a href="process?num=-1&id=${i.product.id}"><i class="fas fa-times"></i></a></div>

                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </c:forEach>
                            <div class="btn-des">
                                <div class="cart_buttons" onclick="CheckOut()"> <button type="button" class="button cart_button_clear"><a >Check Out</a></button> </div>
                                <div class="cart_buttons"> <button type="button" class="button cart_button_clear"><a href="Home.jsp">Continue Shopping</a></button> </div>
                                <div class="cart_buttons" onclick="Order()"> <button type="button" class="button cart_button_clear"><a>Đã đặt hàng</a></button> </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="container wrapper" id="wrapper">
            <div class="row cart-head">
                <div class="container">
                    <div class="row">
                        <p></p>
                    </div>
                    <div class="row">
                        <div style="display: table; margin: auto;">
                            <span class="step step_complete"> <a href="#" class="check-bc">Cart</a> <span class="step_line step_complete"> </span> <span class="step_line backline"> </span> </span>
                            <span class="step step_complete"> <a href="#" class="check-bc">Checkout</a> <span class="step_line "> </span> <span class="step_line step_complete"> </span> </span>

                        </div>
                    </div>

                </div>
            </div>    

            <!--Section: Block Content-->
        </div>
        <div id="order">
            <div class="cart_section">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-10 offset-lg-1">
                            <div class="cart_container">
                                <div class="cart_title">Đã đặt hàng<small> (${sizeOrder} in your cart) </small></div>
                                <c:forEach items="${requestScope.listOrder}" var="i"> 
                                    <div class="cart_items">
                                        <ul class="cart_list">
                                            <li class="cart_item clearfix">
                                                <div class="cart_item_info d-flex flex-md-row flex-column justify-content-between">


                                                    <div class="cart_item_name cart_info_col">
                                                        <div class="cart_item_title">Price</div>
                                                        <div class="cart_item_text">${i.price} VND</div>
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
                                                    <div class="cart_item_color cart_info_col">
                                                        <div class="cart_item_title">Quantity</div>
                                                        <div class="cart_item_text">
                                                            ${i.quantity}</div>
                                                    </div>
                                                    <div class="cart_item_price cart_info_col">
                                                        <div class="cart_item_title">Ảnh Miêu Tả</div>
                                                        <img style="height: 100px;width: 100px" src="${i.img}">
                                                    </div>

                                                    <div class="cart_item_color cart_info_col">
                                                        <c:if test="${i.status ==false}">
                                                            <div class="cart_item_title"><h3><a href="xacnhan?pid=${i.pid}&&oid=${i.oid}" >Xác nhận đã nhận </a></h3></div>

                                                        </c:if>
                                                        <c:if test="${i.status ==true}">
                                                            <div class="cart_item_title"><h3  onclick="doDelete('${i.pid}', '${i.oid}')">Hủy Đơn</h3></div>
                                                        </c:if>
                                                    </div>



                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--code check out--> 
        <div id="checkout">
            <div class="container-fluid input text-center">
                <div class="col-md-4 col-sm-12">
                    <div class="bigcart"></div>
                    <h1>Your shopping cart</h1>
                    <p>
                        This is a free and <b><a href="http://tutorialzine.com/2014/04/responsive-shopping-cart-layout-twitter-bootstrap-3/" title="Read the article!">responsive shopping cart layout, made by Tutorialzine</a></b>. It looks nice on both desktop and mobile browsers. Try it by resizing your window (or opening it on your smartphone and pc).
                    </p>
                </div>
                <div class="col-md-4 col-sm-12">

                    <form action="checkout" method="post">
                        <h1>Enter Information</h1>
                        <label for="address"><b>Address</b></label>
                        <input style="margin-left: 10px" type="text" placeholder="Enter Address" name="address" required>
                        <br>
                        <label for="numberphone"><b>Number Phone</b></label>
                        <input type="phone" placeholder="Enter Phone" name="phone" required>
                        <span class="order"> <a class="text-center"><input class="order1" type="submit" value="ORDER"></a></span>
                    </form>
                </div>

                <div class="col-md-4 col-sm-12 text-left">
                    <ul>
                        <li class="row check list-inline columnCaptions">
                            <span>QTY</span>
                            <span>ITEM</span>
                            <span>Price</span>
                        </li>
                        <c:set var="o" value="${sessionScope.cart}"/>
                        <c:set var="t" value="0"/>
                        <c:forEach items="${o.items}" var="i"> 
                            <c:set var="t" value="${t+1}"/>   
                            <li class="row">
                                <span class="quantity">${i.quantity}</span>
                                <span class="itemName">${i.product.name}</span>

                                <span class="price">${i.product.price}</span>
                                <span class="popbtn"><a class="arrow"></a></span>
                            </li>
                        </c:forEach>
                        <li class="row totals">
                            <span class="itemName">Total:</span>
                            <span class="price">${requestScope.total}</span>

                        </li>
                    </ul>
                </div>
            </div>

            <!-- The popover content -->

            <div id="popover" style="display: none">
                <a href="#"><span class="glyphicon glyphicon-pencil"></span></a>
                <a href="#"><span class="glyphicon glyphicon-remove"></span></a>
            </div>
        </div>


        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_1.png"></div><div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">GIAO HÀNG NHANH</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_2.png"></div><div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">ĐỔI TRẢ TRONG VÒNG 7 NGÀY</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-12">
                <div class="banner-footer-item">
                    <div class="img_info">
                        <img src="img/info_3.png">
                    </div>
                    <div class="banner-footer-item-info">
                        <p class="banner-footer-item-title">THANH TOÁN KHI NHẬN HÀNG</p>
                    </div>
                </div>
            </div>
        </div>

        <%@include file="footer.jsp"%>
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
        <script src="JS/bootstrap.min.js" type="text/javascript"></script>
        <script src="JS/customjs.js" type="text/javascript"></script>
        <script>
                                                                function Order() {
                                                                    document.getElementById("order").style.display = "block";

                                                                }
                                                                function doDelete(pid, oid) {
                                                                    if (confirm("Bạn Có chắc chán muốn hủy đơn ")) {
                                                                        window.location = "huydon?pid=" + pid + "&&oid=" + oid;
                                                                    }
                                                                }
        </script>
    </body>
</html>
