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
        <style>

            .btn-normal .pull-right{
                background-color: #ccc;
                height: 60px;
            }
        </style>
        <%@include file="header.jsp"%>
        <section class="mb-5">
            <form name="f" action="" method="post">
                <div class="row">
                    <div class="col-md-6 mb-4 mb-md-0">

                        <div id="mdb-lightbox-ui"></div>

                        <div class="mdb-lightbox">

                            <div class="row product-gallery mx-1">

                                <div class="col-12 mb-0" style="margin-bottom: 100px">
                                    <figure class="view overlay rounded z-depth-1 main-img">
                                        <a href="${requestScope.img.img1}"
                                           data-size="710x823">
                                            <img src="${requestScope.img.img1}"
                                                 class="img-fluid z-depth-1">
                                        </a>
                                    </figure>

                                </div>
                                <div class="col-12" style="margin-top 100px">
                                    <div class="row">
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img1}"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img2}"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img3}"
                                                     class="img-fluid">
                                                <div class="mask rgba-white-slight"></div>
                                            </div>
                                        </div>
                                        <div class="col-3">
                                            <div class="view overlay rounded z-depth-1 gallery-item">
                                                <img src="${requestScope.img.img4}"
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

                        <h5>${requestScope.product.name}</h5>
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
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepDown()"
                                                        class="minus"></button>
                                                <input class="quantity" min="0" name="quantity" value="1" type="number">
                                                <button onclick="this.parentNode.querySelector('input[type=number]').stepUp()"
                                                        class="plus"></button>
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
        <!-- Classic tabs -->
        <%@include file="footer.jsp"%>

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
        </script> 

    </body>
</html>
