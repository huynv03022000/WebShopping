<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


<%@page import="Modal.Color"%>
<%--<%@page import="Model.Shirt"%>--%>
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
            .form-group img{
                width: 100px;
                height: 100px;
                border-radius: 10px; 

            }
            .choisefile{

            }
            .choisefile input{
                width: auto;
            }

        </style>
        <%@include file="header.jsp"%>

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
              

                <!-- Text input-->
                <div class="form-group">
                    <label class="col-md-4 control-label" for="approuved_by">IMAGE 1</label>  
                    <div class="col-md-4">
                        <div class="form-group">
                            <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                            <div class="col-md-4">
                                <input id="filebutton" name="image" size="50" class="input-file" type="file">
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

<div class="edit-search row"  style=" text-align: center;height: 100px;margin-right:  40%;width: 50%"> 
    <form  action="getProduct"  style="display: none" id="edit-form1" method="post">

        <div class="col-md-4" style="margin-left: 40%;width: 1300px">
            <input id="product_id" value="${requestScope.product.id}" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="text">
        </div>
        <input type="submit" value ="Search">
    </form>
</div>
<form class="form-horizontal" id="edit-form" action="editProduct" method="Post">
    <input id="product_id" value="${requestScope.product.id}" name="id" placeholder="PRODUCT ID" class="form-control input-md" required="" type="hidden">

    <fieldset>
        <!-- Form Name -->
        <legend>Edit PRODUCTS</legend>
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_id">PRODUCT ID</label>  
            <div class="col-md-4">
                <input id="product_id" name="pid" placeholder="PRODUCT ID" class="form-control input-md" value="${requestScope.product.PID}" required="" type="text">
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

        <!-- Text input-->

        <!-- Text input-->
        <div id="Color" class="color">
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 1</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox"  ${requestScope.color.c1?"checked" : ""}  class="form-check-input"  id="check1" name="color1" value="Xanh" >Xanh
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 2</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox" ${requestScope.color.c2?"checked" : ""} class="form-check-input" id="check1" name="color2" value="Đỏ" >Đỏ
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 3</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox"  ${requestScope.color.c3?"checked" : ""} class="form-check-input" id="check1" name="color3" value="Trắng" >Trắng
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 4</label>  

                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox"  ${requestScope.color.c4?"checked" : ""} class="form-check-input" id="check1" name="color4" value="Đen" >Đen
                    </label>
                </div>

            </div>
            <div class="form-group">
                <label class="col-md-4 control-label" for="Color">COLOR 5</label>  
                <div class="col-md-4 form-check">
                    <label class="form-check-label" for="check1">
                        <input type="checkbox"  ${requestScope.color.c5?"checked" : ""} class="form-check-input" id="check1" name="color5" value="Xám" >Xám
                    </label>
                </div>

            </div>

        </div>
        <!-- Textarea -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="product_description">DESCRIBER</label>
            <div class="col-md-4">                     
                <textarea class="form-control" id="product_description"  name="describer"> ${requestScope.product.describer}</textarea>
            </div>
        </div>

        <!-- Textarea -->
        <!-- Text input-->
        <div class="form-group">
            <label class="col-md-4 control-label" for="comment">StATUS</label>  
            <div class="col-md-4">
                <select id="product_categorie" name="status" value="${requestScope.product.status}" class="form-control">
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
                    <div class="col-md-4 choisefile">
                        <input id="filebutton" name="image1"  value="${requestScope.image.img1}"  class="form-control input-md" type="hidden">                        

                        <input id="filebutton" name="image"  class="input-file" type="file">
                        <c:if test="${requestScope.image.img1 !=NULL}">
                            <img class="pic-1"src="${requestScope.image.img1}" alt=""/>
                        </c:if>
                    </div>
                    <div class="col-md-4">
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
                        <input id="filebutton" name="image1"  value="${requestScope.image.img2}"  class="form-control input-md" type="hidden">
                        <input id="filebutton" name="image"  class="input-file" type="file">
                        <c:if test="${requestScope.image.img2 !=null}">
                            <img class="pic-1"src="${requestScope.image.img2}" alt=""/>
                        </c:if>
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 3</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image1"  value="${requestScope.image.img3}"  class="form-control input-md" type="hidden">
                        <input id="filebutton" name="image"  class="input-file" type="file">
                        <c:if test="${requestScope.image.img3 !=NULL}">
                            <img class="pic-1"src="${requestScope.image.img3}" alt=""/>
                        </c:if>
                        <c:if test="${requestScope.image.img3==NULL}">

                        </c:if>
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 4</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image1"  value="${requestScope.image.img4}"  class="form-control input-md" type="hidden">
                        <input id="filebutton" name="image"  class="input-file" type="file">
                        <c:if test="${requestScope.image.img4 !=null}">
                            <img class="pic-1"src="${requestScope.image.img4}" alt=""/>
                        </c:if>
                        <c:if test="${requestScope.image.img4 ==null}">                      
                        </c:if>
                    </div>
                </div>
            </div>
        </div> <div class="form-group">
            <label class="col-md-4 control-label" for="approuved_by">IMAGE 5</label>  
            <div class="col-md-4">
                <div class="form-group">
                    <label class="col-md-4 control-label" for="filebutton">Choise Image</label>
                    <div class="col-md-4">
                        <input id="filebutton" name="image1"  value="${requestScope.image.img5}"  class="form-control input-md" type="hidden">

                        <input id="filebutton" name="image"   class="input-file" type="file">
                        <c:if test="${requestScope.image.img5 !=NULL}">
                            <img class="pic-1"src="${requestScope.image.img5}" alt=""/>
                        </c:if>
                        <c:if test="${requestScope.image.img5==NULL}">

                        </c:if>
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
                <input id="filebutton" name="image1"  value="${requestScope.image.img6}"  class="form-control input-md" type="hidden">
                <input id="filebutton" name="image"  class="input-file" type="file">
                <div class="view overlay rounded z-depth-1 gallery-item">
                    <img src="${requestScope.image.img6}"
                         class="img-fluid">
                    <div class="mask rgba-white-slight"></div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="form-group">
    <label class="col-md-4 control-label" for="product_name_fr">Quantity</label>  
    <div class="col-md-4">
        <input id="product_name_fr" name="quantity"  value="${requestScope.product.quantity}" placeholder="Enter quantity" class="form-control input-md" required="" type="number">

    </div>
</div>

<div class="form-group">
    <label class="col-md-4 control-label" for="product_categorie">Choise Type Add</label>
    <div class="col-md-4">
        <select id="product_categorie"  name="categori" class="form-control">
            <c:forEach items="${listCate}"   var="o">
                <option value="${o.id}"   ${o.id == requestScope.product.CID ? "selected": ''}>${o.name}</option>

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
        <!-- Select Basic -->
        <div class="form-group">
            <label class="col-md-4 control-label" for="singlebutton">Remove Product</label>
            <div class="col-md-4">
                <input type="submit" value="Remove Product">
            </div>
        </div>

    </fieldset>
</form>

<%@include file="footer.jsp"%>
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
<%-- 
    Document   : somiDetail
    Created on : Mar 6, 2021, 8:09:03 PM
    Author     : Admin
--%>


