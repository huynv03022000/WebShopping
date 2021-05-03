<%-- 
    Document   : Home
    Created on : Apr 9, 2021, 11:29:35 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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



        <header>
            <div id="carouselExampleIndicators" class="carousel slide container" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <!-- Slide One - Set the background image for this slide in the line below -->
                    <div class="carousel-item active" style="background-image: url('img/ao/h1.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">First Slide</h2>
                            <p class="lead">This is a description for the first slide.</p>
                        </div>
                    </div>
                    <!-- Slide Two - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('img/ao/h11.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Second Slide</h2>
                            <p class="lead">This is a description for the second slide.</p>
                        </div>
                    </div>
                    <!-- Slide Three - Set the background image for this slide in the line below -->
                    <div class="carousel-item" style="background-image: url('img/ao/h13.jpg')">
                        <div class="carousel-caption d-none d-md-block">
                            <h2 class="display-4">Third Slide</h2>
                            <p class="lead">This is a description for the third slide.</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </header>

        <!-- Page Content -->

        <div class="container-fluid  mt-3 mb-4 " id="content-table">
            <hr>
            <hr>
            <hr>
            <h2>Sản Phẩm Mới</h2>  <hr>

            <div class="row g-2">
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="
                                                                                                  img/aoDong/a1.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long sleev shirt</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size1" value="small"> <span>S</span> </label> 
                                    <label class="radio"> <input type="radio" name="size1" value="Medium" checked> <span>M</span> </label>
                                    <label class="radio"> <input type="radio" name="size1" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-15%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/h6.jpg
                                                                                                  " class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Black top caps</h6> <span class="text-danger font-weight-bold">$1.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size2" value="small"> <span>S</span> </label> <label class="radio"> <input type="radio" name="size2" value="Medium" checked> <span>M</span> </label> <label class="radio"> <input type="radio" name="size2" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> 
                                <span class="percent">-35%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> 
                            <img src="img/ao/h1.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Kiton sui suit</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size3" value="small">
                                        <span>S</span> </label> <label class="radio"> <input type="radio" name="size3" value="Medium" checked>
                                        <span>M</span> </label> <label class="radio"> <input type="radio" name="size3" value="Large">
                                        <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first">
                                <span class="percent">-25%</span> <span class="wishlist"><i class="fa fa-heart"></i></span>
                            </div> <img src="img/ao/h4.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long red shirt</h6> <span class="text-danger font-weight-bold">$4.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size4" value="small"> <span>S</span> 
                                    </label> <label class="radio"> <input type="radio" name="size4" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size4" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span> 
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm14.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">Long black t-shirt</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size5" value="small"> 
                                        <span>S</span> </label> <label class="radio"> <input type="radio" name="size5" value="Medium" checked>
                                        <span>M</span> </label> <label class="radio"> <input type="radio" name="size5" value="Large">
                                        <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm12.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm15.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="img-container">
                            <div class="d-flex justify-content-between align-items-center p-2 first"> <span class="percent">-25%</span>
                                <span class="wishlist"><i class="fa fa-heart"></i></span> </div> <img src="img/ao/sm19.jpg" class="img-fluid">
                        </div>
                        <div class="product-detail-container">
                            <div class="d-flex justify-content-between align-items-center">
                                <h6 class="mb-0">TINONG white specs</h6> <span class="text-danger font-weight-bold">$3.99</span>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mt-2">
                                <div class="ratings"> <i class="fa fa-star"></i> <span>4.5</span> </div>
                                <div class="size"> <label class="radio"> <input type="radio" name="size6" value="small"> <span>S</span>
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Medium" checked> <span>M</span> 
                                    </label> <label class="radio"> <input type="radio" name="size6" value="Large"> <span>L</span> </label> </div>
                            </div>
                            <div class="mt-3"> <button class="btn btn-danger btn-block">Buy Now</button> </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!--san phan ban chay--> 

        <div class="container-fluid">
            <hr>
            <hr>
            <hr>

            <h3 style="margin-left: 40%;font-size: 35px" class="h3">Sản Phẩm Bán Chạy  </h3>
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc12.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc11.jpg" alt=""/>


                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc21.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc22.jpg" alt=""/>

                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Women's Designer Top</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
                            </div>
                            <ul class="rating">
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                                <li class="fa fa-star"></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc31.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc32.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc41.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc42.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc51.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc52.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc61.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc62.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">Best</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                </div> <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc71.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc72.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">New</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
                </div> <div class="col-md-3 col-sm-6">
                    <div class="product-grid3">
                        <div class="product-image3">
                            <a href="#">
                                <img class="pic-1"src="img/Bán Chạy/bc81.jpg" alt=""/>
                                <img class="pic-2" src="img/Bán Chạy/bc82.jpg" alt=""/>
                            </a>
                            <ul class="social">
                                <li><a href="#"><i class="fa fa-shopping-bag"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                            <span class="product-new-label">New</span>
                        </div>
                        <div class="product-content">
                            <h3 class="title"><a href="#">Men's Blazer</a></h3>
                            <div class="price">
                                300,000VND
                                <span>350,000VND</span>
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
            </div>
        </div>
        <hr>

        <%@include file="footer.jsp"%>
    </body>
</html>
