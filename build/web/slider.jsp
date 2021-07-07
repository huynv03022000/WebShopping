
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Snippet - BBBootstrap</title>
        <link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css' rel='stylesheet'>
        <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.3/owl.carousel.js"></script>
          <link href="Css/Home.css" rel="stylesheet" type="text/css"/>
        <script src="HomeJS.js" type="text/javascript"></script>
        <style>
            .stretch-card>.card {
                width: 100%;
                min-width: 100%
            }


            .flex {
                -webkit-box-flex: 1;
                -ms-flex: 1 1 auto;
                flex: 1 1 auto
            }

            @media (max-width:991.98px) {
                .padding {
                    padding: 1.5rem
                }
            }

            @media (max-width:767.98px) {
                .padding {
                    padding: 1rem
                }
            }

            .padding {
                padding: 3rem
            }

            .owl-carousel .item {
                margin: 3px
            }

            .owl-carousel .item img {
                display: block;
                width: 100%;
                height: auto
            }

            .owl-carousel .item {
                margin: 3px
            }

            .owl-carousel {
                margin-bottom: 15px
            }
           .item img{
                width: 431px;
                height: 271px;
            }
        </style>
    </head>

    <body oncontextmenu='return false' class='snippet-body'>

        <div class="page-content page-container" id="page-content">
            <div class="padding">
                <div class="row container-fluid">
                    <div class="col-lg-12 grid-margin stretch-card">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="card-title">Basic carousel</h4>
                                <div class="owl-carousel" style="display: block">
                                    <c:forEach items="${list1}" var="o">
                                        <a href="detail?id=${o.id}&&categori=${o.CID}">
                                            <div class="item"> <img style="
                height: 371px;" src="${o.img}" alt="image" /> </div></a>
                                            </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js'></script>
        <script type='text/javascript'>
            $(document).ready(function () {

                $(".owl-carousel").owlCarousel({

                    autoPlay: 3000,
                    items: 4,
                    itemsDesktop: [1199, 3],
                    itemsDesktopSmall: [979, 3],
                    center: true,
                    nav: true,
                    loop: true,
                    responsive: {
                        600: {
                            items: 4
                        }
                    }
                });

            });
        </script>
    </body>

</html>