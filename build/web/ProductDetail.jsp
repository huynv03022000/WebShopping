<%-- 
    Document   : ProductDetail
    Created on : Apr 9, 2021, 4:37:28 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>-->
        <!--<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>-->
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
        <!--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
        <!--<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>-->
        <!--<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>-->
        <!--        <link href="Css/Home.css" rel="stylesheet" type="text/css"/>
                <script src="HomeJS.js" type="text/javascript"></script>-->
        <title>JSP Page</title>
    </head>
    <body> 
        <style>
            .btn-normal .pull-right{
                background-color: #ccc;
                height: 60px;
            }
            body{
                margin: 0 auto;
                width: 99%;
            }
            .img-fluid {
                height: 100px;
            }
            * {box-sizing: border-box;}

            .img-zoom-container {
                position: relative;
            }

            .img-zoom-lens {
                position: absolute;
                border: 1px solid #d4d4d4;
                /*set the size of the lens:*/
                width: 40px;
                height: 40px;
            }

            .img-zoom-result {
                border: 1px solid #d4d4d4;
                /*set the size of the result div:*/
                width: 300px;
                height: 300px;
            }
        </style>
        <div class="header-contact"style="width: 99%;">
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

            <div class="bs-example" style="width: 99%">
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
        <section class="mb-5">
            <form name="f" action="" method="post">
                <div class="row">
                    <div class="col-md-6 mb-4 mb-md-0">

                        <div id="mdb-lightbox-ui"></div>

                        <div class="mdb-lightbox">

                            <div class="row product-gallery mx-1">

                                <div class="col-12 mb-0" style="margin-bottom: 100px"  class="img-zoom-container">
                                    <figure class="view overlay rounded z-depth-1 main-img">
                                        <a href="${requestScope.img.img1}"
                                           data-size="710x823">
                                            <img src="${requestScope.img.img1}" id="myimage" style="height: 500px;width: 600px"
                                                 class="img-fluid z-depth-1">
                                        </a>
                                                 <div id="myresult" class="img-zoom-result"></div>
                                    </figure>

                                </div>
                                <div class="col-12" style="margin-top:100px">
                                    <div class="row"  class="img-zoom-container">
                                        <div class="col-3" >
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img1}" style="height: 300px;" id="myresult"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img2}" style="height: 300px;"id="myresult"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img3}" style="height: 300px;"id="myresult"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img4}" style="height: 300px;"id="myresult"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>

                    </div>
                    <div class="col-md-6">

                        <h2>${requestScope.product.name}</h2>
                        <p class="mb-2 text-muted text-uppercase small">Shirts</p>

                        <p><span class="mr-1"><strong>${requestScope.product.price}</strong></span></p>
                        <p class="pt-1">${requestScope.product.describer}</p>
                        <div class="table-responsive">
                            <table class="table table-sm table-borderless mb-0">
                                <tbody>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>Model</strong></th>
                                        <td>${requestScope.product.name}</td>
                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>Color</strong></th>
                                        <td>
                                            <select class="selectpicker" id="color">
                                                <optgroup label="Picnic">
                                                    <option value="${requestScope.color.color1}">${requestScope.color.color1}</option>
                                                    <option value="${requestScope.color.color2}">${requestScope.color.color2}</option>
                                                    <option value="${requestScope.color.color3}">${requestScope.color.color3}</option>
                                                    <option value="${requestScope.color.color4}">${requestScope.color.color4}</option>
                                                    <option value="${requestScope.color.color5}">${requestScope.color.color5}</option>
                                                </optgroup>

                                            </select>
                                        </td>


                                    </tr>
                                    <tr>
                                        <th class="pl-0 w-25" scope="row"><strong>Delivery</strong></th>
                                        <td>LV</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <hr>
                        <div class="table-responsive mb-2">
                            <table class="table table-sm table-borderless">
                                <tbody>
                                    <tr>
                                        <td class="pl-0 pb-0 w-25">Quantity</td>
                                        <td class="pb-0">Select size</td>
                                    </tr>
                                    <tr>
                                        <td class="pl-0">
                                            <div class="def-number-input number-input safari_only mb-0">

                                                <input class="quantity" min="0" name="quantity" value="1" type="number">

                                            </div>
                                        </td>
                                        <td>
                                            <div class="mt-1">
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" class="form-check-input" id="small" name="size" value="s"
                                                           checked>
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for="small">Small</label>
                                                </div>
                                                <div class="form-check form-check-inline pl-0">
                                                    <input value="m" type="radio" class="form-check-input" id="medium" name="size">
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for="medium">Medium</label>
                                                </div>
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" value="l" class="form-check-input" id="large" name="size">
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for="large">Large</label>
                                                </div>
                                                <div class="form-check form-check-inline pl-0">
                                                    <input type="radio" value="xl" class="form-check-input" id=" Extra Large" name="size">
                                                    <label class="form-check-label small text-uppercase card-link-secondary"
                                                           for=" Extra Large"> Extra Large</label>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
                        <button type="button" onclick="addCart('${requestScope.product.id}')"  class="btn btn-light btn-md mr-1 mb-2"><i
                                class="fas fa-shopping-cart pr-2"></i>
                        </button>
                    </div>
                </div>
            </form>
        </section>

        <!--Section: Block Content-->
        <!-- Classic tabs -->
        <div class="classic-tabs border rounded px-4 pt-1">

            <ul class="nav tabs-primary nav-justified" id="advancedTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active show" id="description-tab" data-toggle="tab" href="#description" role="tab" aria-controls="description" aria-selected="true">Description</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="info-tab" data-toggle="tab" href="#info" role="tab" aria-controls="info" aria-selected="false">Information</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="reviews-tab" data-toggle="tab" href="#reviews" role="tab" aria-controls="reviews" aria-selected="false">Reviews (1)</a>
                </li>
            </ul>
            <div class="tab-content" id="advancedTabContent">
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
                <section class="content-item" id="comments">
                    <div class="container">   
                        <div class="row">
                            <div class="col-sm-8">   
                                <c:if test="${requestScope.check ==true}">
                                    <form  action="Comment" method="Post">
                                        <h3 class="pull-left">New Comment</h3>
                                        <input type="hidden" name="name" value="${requestScope.username}">
                                        <input type="hidden" name="pid" value="${requestScope.id}">

                                        <button type="" style=" background-color: #ccc;
                                                height: 50px;" class="btn btn-normal pull-right"><input type="submit" value="Submit"></button>
                                        <fieldset>
                                            <div class="row">
                                                <div class="col-sm-3 col-lg-2 hidden-xs">
                                                    <img class="img-responsive" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
                                                </div>
                                                <div class="form-group col-xs-12 col-sm-9 col-lg-10">
                                                    <textarea class="form-control" name="content" id="message" placeholder="Your message" required=""></textarea>
                                                </div>
                                            </div>  	
                                        </fieldset>
                                    </form>
                                </c:if>

                                <c:if test="${requestScope.check ==false}">
                                    <h1>Mua hàng đã mới đươc comment</h1>
                                </c:if>

                                <h3>${requestScope.size}</h3>
                                <c:forEach items="${list}" var="o">
                                    <!-- COMMENT 1 - START -->
                                    <div class="media">
                                        <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                                        <div class="media-body">
                                            <h4 class="media-heading">${o.name}</h4>
                                            <p>${o.content}</p>
                                            <ul class="list-unstyled list-inline media-detail pull-left">
                                                <li><i class="fa fa-calendar"></i>${o.date}</li>
                                                <li><i class="fa fa-thumbs-up"></i>${o.like}</li>
                                            </ul>
                                            <ul class="list-unstyled list-inline media-detail pull-right">
                                                <li class=""><a href="">Like</a></li>
                                                <li class=""><a href="">Reply</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </c:forEach>
                                <!-- COMMENT 1 - END -->



                            </div>
                        </div>
                    </div>
                </section>
            </div>

        </div>
        <hr>
        <hr>
        <h1 style="margin-left: 40%">Sản Phẩm Liên Quan</h1>
        <hr>
        <hr>
        <%@include file="slider.jsp"%>
        <!--        <div class="container">
                    <div class="row">
                      
        <c:forEach items="${list1}" var="o">
            <div class="col-md-3 col-sm-6">
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
</div>-->
        <!-- Classic tabs -->

       <section id="footer" style="width :100%">
            <div class="container">
                <div class="row text-center text-xs-center text-sm-left text-md-left">
                    <div class="col-xs-12 col-sm-3 col-md-4">
                        <h5>Customer Policy</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Company</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>

                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-4">
                        <h5>Company</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Customer Policy</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Videos</a></li>
                        </ul>
                    </div>
                    <div class="col-xs-12 col-sm-3 col-md-4">
                        <h5>Shop system</h5>
                        <ul class="list-unstyled quick-links">
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Shop system</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>About</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                            <li><a href="https://www.fiverr.com/share/qb8D02"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                            <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
                        </ul>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
                        <ul class="list-unstyled list-inline social text-center">
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-instagram"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02"><i class="fab fa-google-plus"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.fiverr.com/share/qb8D02" target="_blank"><i class="fa fa-envelope"></i></a></li>
                        </ul>
                    </div>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
                        <p><u><a href="https://www.nationaltransaction.com/">National Transaction Corporation</a></u>COPPYING</p>
                        <p class="h6">© All right Reversed.<a class="text-green ml-2" href="https://www.sunlimetech.com" target="_blank">Sunlimetech</a></p>
                    </div>
                    <hr>
                </div>
            </div>
        </section>
        <script type="text/javascript">
            function addCart(id) {
                var x = document.getElementById('color').value;
                var size = document.getElementsByName('size');

                var rate_value;
                for (var i = 0; i < size.length; i++) {
                    if (size[i].checked) {
                        rate_value = size[i].value;
                    }
                }
                alert(rate_value);
                alert(x);
                document.f.action = "addCart?id=" + id + "&&color=" + x + "&&size=" + rate_value;
                document.f.submit();
            }
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
            function imageZoom(imgID, resultID) {
                var img, lens, result, cx, cy;
                img = document.getElementById(imgID);
                result = document.getElementById(resultID);
                /*create lens:*/
                lens = document.createElement("DIV");
                lens.setAttribute("class", "img-zoom-lens");
                /*insert lens:*/
                img.parentElement.insertBefore(lens, img);
                /*calculate the ratio between result DIV and lens:*/
                cx = result.offsetWidth / lens.offsetWidth;
                cy = result.offsetHeight / lens.offsetHeight;
                /*set background properties for the result DIV:*/
                result.style.backgroundImage = "url('" + img.src + "')";
                result.style.backgroundSize = (img.width * cx) + "px " + (img.height * cy) + "px";
                /*execute a function when someone moves the cursor over the image, or the lens:*/
                lens.addEventListener("mousemove", moveLens);
                img.addEventListener("mousemove", moveLens);
                /*and also for touch screens:*/
                lens.addEventListener("touchmove", moveLens);
                img.addEventListener("touchmove", moveLens);
                function moveLens(e) {
                    var pos, x, y;
                    /*prevent any other actions that may occur when moving over the image:*/
                    e.preventDefault();
                    /*get the cursor's x and y positions:*/
                    pos = getCursorPos(e);
                    /*calculate the position of the lens:*/
                    x = pos.x - (lens.offsetWidth / 2);
                    y = pos.y - (lens.offsetHeight / 2);
                    /*prevent the lens from being positioned outside the image:*/
                    if (x > img.width - lens.offsetWidth) {
                        x = img.width - lens.offsetWidth;
                    }
                    if (x < 0) {
                        x = 0;
                    }
                    if (y > img.height - lens.offsetHeight) {
                        y = img.height - lens.offsetHeight;
                    }
                    if (y < 0) {
                        y = 0;
                    }
                    /*set the position of the lens:*/
                    lens.style.left = x + "px";
                    lens.style.top = y + "px";
                    /*display what the lens "sees":*/
                    result.style.backgroundPosition = "-" + (x * cx) + "px -" + (y * cy) + "px";
                }
                function getCursorPos(e) {
                    var a, x = 0, y = 0;
                    e = e || window.event;
                    /*get the x and y positions of the image:*/
                    a = img.getBoundingClientRect();
                    /*calculate the cursor's x and y coordinates, relative to the image:*/
                    x = e.pageX - a.left;
                    y = e.pageY - a.top;
                    /*consider any page scrolling:*/
                    x = x - window.pageXOffset;
                    y = y - window.pageYOffset;
                    return {x: x, y: y};
                }
            }
            imageZoom("myimage", "myresult");
        </script> 

    </body>
</html>
