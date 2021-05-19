<%-- 
    Document   : Demo
    Created on : Apr 9, 2021, 5:03:57 PM
    Author     : Admin
--%>

<%@page import="Modal.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      
         <section class="mb-5">

            <div class="row">
                <div class="col-md-6 mb-4 mb-md-0">

                    <div id="mdb-lightbox-ui"></div>

                    <div class="mdb-lightbox">

                        <div class="row product-gallery mx-1">

                            <div class="col-12 mb-0">
                                <figure class="view overlay rounded z-depth-1 main-img">
                                    <a href="${requestScope.img.img1}"
                                       data-size="710x823">
                                        <img src="${requestScope.img.img1}"
                                             class="img-fluid z-depth-1">
                                    </a>
                                </figure>
                                <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                                    <a href="${requestScope.img.img2}"
                                       data-size="710x823">
                                        <img src="${requestScope.img.img2}"
                                             class="img-fluid z-depth-1">
                                    </a>
                                </figure>
                                <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                                    <a href="${requestScope.img.img3}"
                                       data-size="710x823">
                                        <img src="${requestScope.img.img3}"
                                             class="img-fluid z-depth-1">
                                    </a>
                                </figure>
                                <figure class="view overlay rounded z-depth-1" style="visibility: hidden;">
                                    <a href="${requestScope.img.img5}"
                                       data-size="710x823">
                                        <img src="${requestScope.img.img5}"
                                             class="img-fluid z-depth-1">
                                    </a>
                                </figure>
                            </div>
                            <div class="col-12">
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

                    <h5>${requestScope.product.name}  ${requestScope.product.PID}</h5>
                    <p class="mb-2 text-muted text-uppercase small">Shirts</p>
                    <ul class="rating">
                        <li>
                            <i class="fas fa-star fa-sm text-primary"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-primary"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-primary"></i>
                        </li>
                        <li>
                            <i class="fas fa-star fa-sm text-primary"></i>
                        </li>
                        <li>
                            <i class="far fa-star fa-sm text-primary"></i>
                        </li>
                    </ul>
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
<!--                                    <td>${requestScope.color.Color1}</td>
                                    <td>${requestScope.color.Color2}</td>
                                    <td>${requestScope.color.Color3}</td>
                                    <td>${requestScope.color.Color4}</td>
                                    <td>${requestScope.color.Color5}</td>-->
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
                                                <input type="radio" class="form-check-input" id="small" name="materialExampleRadios"
                                                       checked>
                                                <label class="form-check-label small text-uppercase card-link-secondary"
                                                       for="small">Small</label>
                                            </div>
                                            <div class="form-check form-check-inline pl-0">
                                                <input type="radio" class="form-check-input" id="medium" name="materialExampleRadios">
                                                <label class="form-check-label small text-uppercase card-link-secondary"
                                                       for="medium">Medium</label>
                                            </div>
                                            <div class="form-check form-check-inline pl-0">
                                                <input type="radio" class="form-check-input" id="large" name="materialExampleRadios">
                                                <label class="form-check-label small text-uppercase card-link-secondary"
                                                       for="large">Large</label>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <button type="button" class="btn btn-primary btn-md mr-1 mb-2">Buy now</button>
                    <button type="button" class="btn btn-light btn-md mr-1 mb-2"><i
                            class="fas fa-shopping-cart pr-2"></i>Add to cart</button>
                </div>
            </div>

        </section>
    </body>
</html>

<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


<%@page import="Modal.Color"%>
<%--<%@page import="Model.Shirt"%>--%>
<%--<%@page contentType="text/html" pageEncoding="UTF-8"%>--%>
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


        <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <link href="Css/addProduct.css" rel="stylesheet" type="text/css"/>

        <title>JSP Page</title>
    </head>
    <body>
        <style>
            .form-horizontal{
                display: none;
            }
            #add-form{
                display: block;
            }
            .content{
                display: flex;
                text-align: center;
            }
            .content-center{
                width: 200px;
                height: 50px;
                background-color: #30cfd0;
            }
            .form-check{
                font-size: 20px;
                margin-left: 20px;
            }

        </style>


        <div class="content col-4 container" >
            <button id="add" class="content-center" onclick="abc(1)">
                ADD Product
            </button>
            <button id="edit" class="content-center" onclick="abc(2)">
                Edit Product
            </button>
            <button id="remove" class="content-center" onclick="abc(3)">
                Remove Product
            </button>
        </div>
        <form class="form-horizontal" id="add-form" action="addProduct1" method="Post" >
            <fieldset>
                <!-- Form Name -->
                <legend>Ađd PRODUCTS</legend>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
                    <div class="col-md-4">
                        <input id="product_id" name="PID" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
                    <div class="col-md-4">
                        <input id="product_name" name="name" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

                    </div>
                </div>
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="price" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" required="" type="number">

                    </div>
                </div>

                <!-- Select Basic -->

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="available_quantity">SIZE</label>  
                    <div class="col-md-4">
                        <input id="product_name_fr" name="size" placeholder="PRODUCT Size" class="form-control input-md" required="" type="text">
                    </div>
                </div>

                <!-- Text input-->
                <div id="Color" class="color">
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Color">COLOR 1</label>  

                        <div class="col-md-4 form-check">
                            <label class="form-check-label" for="check1">
                                <input type="checkbox" class="form-check-input" id="check1" name="color1" value="xanh" checked>Xanh
                            </label>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Color">COLOR 2</label>  

                        <div class="col-md-4 form-check">
                            <label class="form-check-label" for="check1">
                                <input type="checkbox" class="form-check-input" id="check1" name="color2" value="Đỏ" checked>Đỏ
                            </label>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Color">COLOR 3</label>  

                        <div class="col-md-4 form-check">
                            <label class="form-check-label" for="check1">
                                <input type="checkbox" class="form-check-input" id="check1" name="color3" value="Trắng" checked>Trắng
                            </label>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Color">COLOR 4</label>  

                        <div class="col-md-4 form-check">
                            <label class="form-check-label" for="check1">
                                <input type="checkbox" class="form-check-input" id="check1" name="color4" value="Đen" checked>Đen
                            </label>
                        </div>

                    </div>
                    <div class="form-group">
                        <label class="col-md-4 control-label" for="Color">COLOR 5</label>  
                        <div class="col-md-4 form-check">
                            <label class="form-check-label" for="check1">
                                <input type="checkbox" class="form-check-input" id="check1" name="color5" value="Xám" checked>Xám
                            </label>
                        </div>

                    </div>

                </div>
                <!-- Textarea -->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="product_description">DESCRIBER</label>
                    <div class="col-md-4">                     
                        <textarea class="form-control" id="product_description" name="describer"></textarea>
                    </div>
                </div>

                <!-- Textarea -->
                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="comment">StATUS</label>  
                    <div class="col-md-4">
                        <select id="product_categorie" name="status" class="form-control">
                            <option value="1">Còn hàng</option>
                            <option value="0">Hết Hàng</option> 
                        </select>
                    </div>
                </div>

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 1</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 2</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                    </div>
                </div> <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 3</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                    </div>
                </div> <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 4</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                    </div>
                </div> <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 5</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" class="input-file" type="file">
                            </div>
                        </div>
                    </div>
                </div>
            </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 6</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">Quantity</label>  
            <div class="col-md-4">
                <input id="product_name_fr" name="quantity" placeholder="Enter quantity" class="form-control input-md" required="" type="number">

            </div>
        </div>

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
            <div class="col-md-4">
                <select id="product_categorie" name="categori" class="form-control">
                    <c:forEach items="${listCate}" var="o">
                        <option value="${o.id}">${o.name}</option>

                    </c:forEach>
                </select>
            </div>
        </div>
        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="singlebutton">Add Product</label>
            <div class="col-md-4">
                <input type="submit" value="Add Product">
            </div>
        </div>

    </fieldset>
</form>

<div class="edit-search row"   style="display: block" style=" text-align: center;height: 100px;margin-right:  40%;width: 50%"> 
    <form  action="getProduct"  style="display: none" id="edit-form1" method="post">
        <legend>Edit PRODUCTS</legend>
        <div class="col-md-4" style="margin-left: 40%;width: 1300px">
            <input id="product_id" value="${requestScope.pid}" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
        </div>
        <input type="submit" value ="Search">
    </form>
</div>
<form class="form-horizontal" id="edit-form" action="editProduct" method="Post" style="display: block" >
    <fieldset  style="display: block">
        <!-- Form Name -->
        <legend>Edit PRODUCTS</legend>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
            <div class="col-md-4">
                <input id="product_id" name="pid" placeholder="PRODUCT ID" class="form-control input-md" value="${requestScope.product.id}" required="" type="text">
            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name">PRODUCT NAME</label>  
            <div class="col-md-4">
                <input id="product_name" name="name" value="${requestScope.product.name}" placeholder="PRODUCT NAME" class="form-control input-md" required="" type="text">

            </div>
        </div>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_name_fr">PRICE</label>  
            <div class="col-md-4">
                <input id="product_name_fr" name="price" value="${requestScope.product.price}" placeholder="PRODUCT DESCRIPTION FR" class="form-control input-md" required="" type="number">

            </div>
        </div>

        <!-- Select Basic -->
        <%

            Color c = (Color) request.getAttribute("color");
            boolean check1 = false;
            boolean check2 = false;
            boolean check3 = false;
            if (c.getColor1() != null) {
                check1 = true;
            } else if (c.getColor2() != null) {
                check2 = true;
            } else if (c.getColor2() != null) {
                check3 = true;
            }
        %>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="available_quantity">SIZE</label>  
            <div class="col-md-4">
                <input id="product_name_fr" name="size" value="${requestScope.product.size}"  placeholder="PRODUCT Size" class="form-control input-md" required="" type="text">
            </div>
        </div>
        <!-- Text input-->
        <div id="Color" class="color">
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 1</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox"  <%= check1 ? "checked" : ""%>  class="form-check-input"  id="check1" name="color1" value="xanh" checked>Xanh
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 2</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" <%= check2 ? "checked" : ""%> class="form-check-input" id="check1" name="color2" value="Đỏ" checked>Đỏ
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 3</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" <%= check3 ? "checked" : ""%> class="form-check-input" id="check1" name="color3" value="Trắng" checked>Trắng
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 4</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" class="form-check-input" id="check1" name="color4" value="Đen" checked>Đen
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 5</label>  
                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" class="form-check-input" id="check1" name="color5" value="Xám" checked>Xám
                    </label>
                </div>

            </div>

        </div>
        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">DESCRIBER</label>
            <div class="col-md-4">                     
                <textarea class="form-control" value="${requestScope.product.describer}" id="product_description" name="describer"></textarea>
            </div>
        </div>

        <!-- Textarea -->
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="comment">StATUS</label>  
            <div class="col-md-4">
                <select id="product_categorie" value="${requestScope.product.status}" name="status" class="form-control">
                    <option value="1">Còn hàng</option>
                    <option value="0">Hết Hàng</option> 
                </select>
            </div>
        </div>

        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 1</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image" value="${requestScope.image.image1}" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 2</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" value="${requestScope.image.image2}" name="image" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 3</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image" value="${requestScope.image.image3}" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 4</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image" value="${requestScope.image.image4}" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 5</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image" value="${requestScope.image.image5}" class="input-file" type="file">
                    </div>
                </div>
            </div>
        </div>
    </div> <div class="form-group">
    <label class="col-md-4 control-label" for="approuved_by">IMAGE 6</label>  
    <div class="col-md-4">
        <div class="form-group">
            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
            <div class="col-md-4">
                <input id="filebutton" name="image" value="${requestScope.image.image6}" class="input-file" type="file">
            </div>
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="product_name_fr">Quantity</label>  
    <div class="col-md-4">
        <input id="product_name_fr" name="quantity" value="${requestScope.product.quantity}" placeholder="Enter quantity" class="form-control input-md" required="" type="number">

    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
    <div class="col-md-4">
        <select id="product_categorie" name="categori" class="form-control">
            <c:forEach items="${listCate}" var="o">
                <option value="${o.id}">${o.name}</option>

            </c:forEach>
        </select>
    </div>
</div>
<!-- Select Basic -->
<div class="form-group">
    <label class="col-md-4 control-label" for="singlebutton">Edit Product</label>
    <div class="col-md-4">
        <input type="submit" value="Edit Product">
    </div>
</div>

</fieldset>
</form>
<form class="form-horizontal" id="remove-form" action="removeProduct" method="Post" >
    <fieldset>
        <!-- Form Name -->
        <legend>Remove PRODUCTS</legend>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
            <div class="col-md-4">
                <input id="product_id" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
            </div>
        </div>
        <!-- Text input-->

        <div class="form-group">
            <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
            <div class="col-md-4">
                <select id="product_categorie" name="type" class="form-control">
                    <option value="somi">Sơ Mi</option>
                    <option value="quanbo">Quần Bò</option> 
                    <option value="aophong">Áo Phông</option>  
                    <option value="quanau">Quần Âu</option> 
                    <option value="dongho">Đồng Hồ</option>
                </select>
            </div>
        </div>
        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="singlebutton">Remove Product</label>
            <div class="col-md-4">
                <input type="submit" value="Remove Product">
            </div>
        </div>

    </fieldset>
</form>


<!--Section: Block Content-->
<script>


    $(document).ready(function () {
        // MDB Lightbox Init
        $(function () {
            $("#mdb-lightbox-ui").load("mdb-addons/mdb-lightbox-ui.html");
        });
    });
    function abc(a) {
        if (a == 3) {
            document.getElementById('add-form').style.display = "none";
            document.getElementById('edit-form').style.display = "none";
            document.getElementById('edit-form1').style.display = "none";
            document.getElementById('remove-form').style.display = "block";
        }
        if (a == 2) {
            document.getElementById('add-form').style.display = "none";
            document.getElementById('edit-form').style.display = "block";
            document.getElementById('edit-form1').style.display = "block";
            document.getElementById('remove-form').style.display = "none";
        }
        if (a == 1) {
            document.getElementById('add-form').style.display = "block";
            document.getElementById('edit-form').style.display = "none";
            document.getElementById('edit-form1').style.display = "none";
            document.getElementById('remove-form').style.display = "none";


        }
    }
    function hidenColor() {
        document.getElementById('Color').style.display = "block";
    }
</script>
</body>
</html>

