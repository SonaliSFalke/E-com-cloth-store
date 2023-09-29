<%-- 
    Document   : product
    Created on : 23-Sept-2023, 12:43:05 am
    Author     : ASUS
--%>

<%@page import="com.mycompany.e.com.dao.ProductDao"%>
<%--<%@page import="com.mycompany.e.com.servlets.ProductDao"%>--%>
<%@page import="com.mycompany.e.com.dao.CategoryDao"%>
<%@page import="com.mycompany.e.com.helper.FactoryProvider"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.e.com.entities.Category"%>
<%@page import="com.mycompany.e.com.entities.Product"%>
<%@page import="com.mycompany.e.com.helper.Hekper"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="components/css_js_link.jsp" %>
    </head>
    <body>

        <%@include  file="components/navbar.jsp" %>

        <!-- PRODUCT Banner  start -->
        <div id="banner">
            <img src="https://i.pinimg.com/originals/43/6a/b3/436ab37bfaff345a10d1092ae5b989ee.png" alt=" PRODUCT banner image"
                 class="w-100">
        </div>
        <div class="abt-head container">
            <h1>BRAND COLLECTION FOR YOU </h1>
            <H2>__________</H2>

        </div>

        <!-- PRODUCT Banner  section End -->


        <div class="container-fluid">
            <div class="row mt-3 mx-2">

                <% String cat = request.getParameter("category");
                    //out.println(cat);

                    ProductDao dao = new ProductDao(FactoryProvider.getFactory());
                    List<Product> list = null;

                    if (cat == null || cat.trim().equals("all")) {
                        list = dao.getAllProducts();

                    } else {

                        int cid = Integer.parseInt(cat.trim());
                        list = dao.getAllProductsById(cid);

                    }

                    CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                    List<Category> clist = cdao.getCategories();

                %>



                <!--show categories-->
                <div class="col-md-2">


                    <div class="list-group mt-4" id='list-bg'>

                        <a href="product.jsp?category=all" class="list-group-item list-group-item-action custom-bg active">
                            All Products
                        </a>




                        <% for (Category c : clist) {
                        %>



                        <a href="product.jsp?category=<%= c.getCategoryId()%>" class="list-group-item list-group-item-action"><%= c.getCategoryTitle()%></a>


                        <%    }
                        %>



                    </div>


                </div>

                <!--show products-->
                <div class="col-md-10">


                    <!--row-->
                    <div class="row mt-4 ">

                        <!--col:12-->
                        <div class="col-md-12">

                            <div class="card-columns">

                                <!--traversing products-->

                                <%
                                    for (Product p : list) {

                                %>


                                <!--product card-->
                                <div class="card product-card">

                                    <div class="container text-center">
                                        <img src="img/products/<%= p.getpPhoto()%>" style="max-height: 200px;max-width: 100%;width: auto; " class="card-img-top m-2" alt="...">

                                    </div>

                                    <div class="card-body">

                                        <h5 class="card-title"><%= p.getpName()%></h5>

                                        <p class="card-text">
                                            <%= Hekper.get10Words(p.getpDesc())%>

                                        </p>

                                    </div>

                                    <div class="card-footer text-center sub-btn">
                                        
                                        
                                        <button class="btn custom-bg text-white" style="border-radius: 0px; padding: 10px; width: 90px;" onclick="add_to_cart(<%= p.getpId()%>, '<%= p.getpName()%>',<%= p.getPriceAfterApplyingDiscount()%>)">Add to Cart</button>
                                        <button class="btn  btn-outline-success custom-bg-1 " style="width: 220px;">  &#8377; <%= p.getPriceAfterApplyingDiscount()%>/-  <span class="text-secondary discount-label" style="font-size: 13px  !important;">  &#8377; <%= p.getpPrice()%> , <%= p.getpDiscount()%>% off </span>  </button>

                                    </div>



                                </div>






                                <%}

                                    if (list.size() == 0) {
                                        out.println("<h3>No item in this category</h3>");
                                    }


                                %>


                            </div>                     



                        </div>                   

                    </div>



                </div>

            </div>
        </div>
        <%@include file="components/footer.jsp" %>
    </body>
</html>
