

<%@page import="com.mycompany.e.com.dao.ProductDao"%>
<%@page import="com.mycompany.e.com.helper.Hekper"%>
<%--<%@page import="com.mycompany.e.com.servlets.ProductDao"%>--%>
<%@page import="com.mycompany.e.com.entities.Product"%>
<%@page import="com.mycompany.e.com.entities.Category"%>
<%@page import="com.mycompany.e.com.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.e.com.helper.FactoryProvider" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-commerce Home</title>
        <%@include file="components/css_js_link.jsp" %>
    </head>
    <body>

        <%@include  file="components/navbar.jsp" %>
        <!--<h1>Hello World!</h1>-->
        <% //            out.println(FactoryProvider.getFactory());

        %>

        <!-- Banner carousel section start -->
        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img
                        src="https://ciyashop.potenzaglobalsolutions.com/fashion-modern/wp-content/uploads/sites/2/2018/02/shop-banner.jpg"
                        class="d-block w-100" alt="banner image 1">
                </div>
                <div class="carousel-item">
                    <img src="https://i.pinimg.com/originals/8a/37/f6/8a37f6ff56a2a2c6ada14afb69e5887c.jpg" class="d-block w-100"
                         alt="banner image 2">
                </div>
                <div class="carousel-item">
                    <img src="https://i.pinimg.com/originals/43/6a/b3/436ab37bfaff345a10d1092ae5b989ee.png" class="d-block w-100"
                         alt="banner image 3">
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
        <!-- Banner carousel section End -->

        <!-- product selection section -->
        <div id="selection">
            <div class="container image-sel">
                <div class="left gen-sel ">
                    <div id="image-title">
                        <img
                            src="https://static.wixstatic.com/media/3b1f25_c5a41957acfc4378af9e509767990e85.jpg/v1/fill/w_495,h_263,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3b1f25_c5a41957acfc4378af9e509767990e85.jpg"
                            alt="">
                        <h1>Women's Collection</h1>
                    </div>
                    <div class="left gen-sel ">
                        <div id="image-title">
                            <img
                                src="https://static.wixstatic.com/media/3b1f25_539f419837aa4cf0900ef194bbf1a5a6.jpg/v1/fill/w_495,h_263,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/3b1f25_539f419837aa4cf0900ef194bbf1a5a6.jpg"
                                alt="">
                            <h1>Men's Collection</h1>
                        </div>

                    </div>
                </div>
                <div class="right new-col">
                    <div id="image-title-1" class="">
                        <img
                            src="https://static.wixstatic.com/media/3b1f25_3e2682ea3d9648afb84b65349151736c.jpg/v1/fill/w_709,h_539,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/3b1f25_3e2682ea3d9648afb84b65349151736c.jpg"
                            alt="">
                        <h1>Check Out Our New Collection</h1>
                    </div>
                </div>
            </div>
        </div>
        <!-- product selection section end -->

        <!-- new collection of this week -->

        <div id="new-collection">
            <div class="container">
                <h1>NEW COLLECTION OF THIS WEEK</h1>

                <!-- image card -->

                <div class="card-group  container">
                    <div class="card m-3 p-2 item">
                        <div class="hidden">
                            <img src="https://static.wixstatic.com/media/8a3e6d_3b27e66148b4428792ab9c07ec0f9096.jpg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8a3e6d_3b27e66148b4428792ab9c07ec0f9096.jpg" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title text-center"><a href="#"> Image Title</a></h5>

                            <p class="card-text text-center"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>

                    </div>
                    <div class="card m-3 p-2 item">
                        <div class="hidden">
                            <img src="https://static.wixstatic.com/media/8a3e6d_3b27e66148b4428792ab9c07ec0f9096.jpg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8a3e6d_3b27e66148b4428792ab9c07ec0f9096.jpg" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title text-center"><a href="#"> Image Title</a></h5>

                            <p class="card-text text-center"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>

                    </div>
                    <div class="card m-3 p-2 item">
                        <div class="hidden">
                            <img src="https://static.wixstatic.com/media/8a3e6d_4b6cd918c11240a9b2c68f316ed7a09e.jpg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8a3e6d_4b6cd918c11240a9b2c68f316ed7a09e.jpg" class="card-img-top" alt="...">
                        </div>
                        <div class="card-body">
                            <h5 class="card-title text-center"><a href="#"> Image Title</a></h5>
                            <p class="card-text text-center"><small class="text-body-secondary">Last updated 3 mins ago</small></p>

                        </div>
                    </div>
                    <div class="card m-3 p-2 item">
                        <div class="hidden">
                            <img src="https://static.wixstatic.com/media/8a3e6d_77470671bc3544099ef62b35931afdc1.jpg/v1/fill/w_625,h_625,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/8a3e6d_77470671bc3544099ef62b35931afdc1.jpg" class="card-img-top" alt="...">
                        </div>

                        <div class="card-body">
                            <h5 class="card-title text-center"><a href="#"> Image Title</a></h5>

                            <p class="card-text text-center"><small class="text-body-secondary">Last updated 3 mins ago</small></p>
                        </div>
                    </div>
                </div>



                <!-- image card -->
            </div>

        </div>

     
        <!-- new collection of this week end -->
        <%@include file="components/footer.jsp" %>
    </body>
</html>
