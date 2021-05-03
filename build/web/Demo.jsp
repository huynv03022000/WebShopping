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
