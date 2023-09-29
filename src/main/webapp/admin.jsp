
<%@page import="com.mycompany.e.com.entities.Category"%>
<%@page import="com.mycompany.e.com.dao.CategoryDao"%>
<%@page import="com.mycompany.e.com.entities.User"%>
<%--<%@page import="com.mycompany.e.com.entities.Category"%>--%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.e.com.helper.FactoryProvider"%>
<%--<%@page import="com.mycompany.e.com.dao.CategoryDao"%>--%>
<%@page import="com.mycompany.e.com.entities.User"%>
<%

    User user = (User) session.getAttribute("current_user");
    if (user == null) {

        session.setAttribute("message", "You are not logged in !! Login first");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (user.getUserType().equals("normal")) {

            session.setAttribute("message", "You are not admin ! Do not access this page");
            response.sendRedirect("login.jsp");
            return;

        }

    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin Page</title>
        <%@include file="components/css_js_link.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <div class="container admin">
            <div class="row mt-5">
                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/seo-and-web.png" alt="user_icon">

                            </div> 
                            <h1>2342</h1>
                            <h3 class="text-uppercase text-muted">User</h3>
                        </div>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/list.png" alt="category_icon">

                            </div> 
                            <h1>2342</h1>
                            <h3 class="text-uppercase text-muted">Category</h3>
                        </div>

                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/product.png" alt="product_icon">

                            </div> 
                            <h1>2342</h1>
                            <h3 class="text-uppercase text-muted">Products</h3>
                        </div>

                    </div>
                </div>
            </div>
            <!<!-- seecond div -->
            <div class="row mt-2">


                <div class="col-md-4" data-toggle="modal" data-target="#add-category-modal">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/keys.png" alt="Addcategory_icon">

                            </div> 
                            <p class="mt-2">Click here to add category</p>
                            <h3 class="text-uppercase text-muted">Add Category</h3>
                        </div>

                    </div>
                </div>

                <div class="col-md-4" data-toggle="modal" data-target="#add-product-modal">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/plus.png" alt="product_icon">

                            </div> 
                            <p class="mt-2">Click here to add product</p>
                            <h3 class="text-uppercase text-muted">Add Products</h3>
                        </div>

                    </div>
                </div>
                <div class="col-md-4" data-toggle="modal" data-target="#add-empolyee-modal">
                    <div class="card">
                        <div class="card-body text-center">
                            <div class="container">
                                <img style="max-width: 90px;" class="img-fluid rounded-circle" src="img/employee.png" alt="product_icon">

                            </div> 
                            <p class="mt-2">Click here to add Employee</p>
                            <h3 class="text-uppercase text-muted">Add  Employee</h3>
                        </div>

                    </div>
                </div>
            </div>
        </div>

        <!--add category modal-->



        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content form-style1">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body ">
                        <form action="ProductOperationServlet" method="post" class="">

                            <input type="hidden" name="operation" value="addcategory">


                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle" placeholder="Enter category title" required />

                            </div>


                            <div class="form-group">
                                <textarea style="height: 300px;" class="form-control" placeholder="Enter category description" name="catDescription" required></textarea>

                            </div>

                            <div class="cotnainer text-center sub-btn ">

                                <button >Add Category</button>
                                <button type="button"  data-dismiss="modal">Close</button>

                            </div>



                        </form>




                    </div>

                </div>
            </div>
        </div>




        <!--End add category modal-->





        <!--product modal-->

        <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content form-style1">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Product details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <!--form-->

                        <form action="ProductOperationServlet" method="post" enctype="multipart/form-data">

                            <input type="hidden" name="operation" value="addproduct"/>

                            <!--product title-->

                            <div class="form-group">
                                <input type="text" class="form-control" placeholder="Enter title of product" name="pName" required />
                            </div>

                            <!--product description-->

                            <div class="form-group">
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter product description" name="pDesc"></textarea>

                            </div>

                            <!--product price-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of product" name="pPrice" required />
                            </div>

                            <!--product discount-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required />
                            </div>


                            <!--product quantity-->

                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product Quantity" name="pQuantity" required />
                            </div>


                            <!--product category-->

                            <%  CategoryDao cdao = new CategoryDao(FactoryProvider.getFactory());
                                List<Category> list = cdao.getCategories();

                            %>


                            <div class="form-group">
                                <select name="catId" class="form-control" id="">
                                    <%                                        for (Category c : list) {
                                    %>
                                    <option value="<%= c.getCategoryId() %>"> <%= c.getCategoryTitle() %> </option>
                                    <%}%>
                                </select>

                            </div>



                            <!--product file-->

                            <div class="form-group">
                                <label for="pPic">Select Picture of product</label>  
                                <br>
                                <input type="file" id="pPic" name="pPic" required />

                            </div>


                            <!--submit button-->
                            <div class="container text-center sub-btn">

                                <button class="btn btn-outline-success">Add product</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            </div>



                        </form>
                        <!--end form-->
                    </div>

                </div>
            </div>
        </div>





        <!--End product modal-->
        
         <!--add employee modal-->



        <!-- Modal -->
        <div class="modal fade" id="add-empolyee-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content form-style1">
                    <div class="modal-header custom-bg text-white">
                        <h5 class="modal-title" id="exampleModalLabel">Fill category details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body ">
                        <form action="ProductOperationServlet" method="post" class="">

                            <input type="hidden" name="operation" value="addcategory">


                            <div class="form-group">
                                <input type="text" class="form-control" name="empName" placeholder="Enter employee name" required />

                            </div>


                            <div class="form-group">
                                <input type="text" class="form-control" name="empDes" placeholder="Enter employee Designation" required />
                            </div>

                            <div class="cotnainer text-center sub-btn ">

                                <button >Add Employee</button>
                                <button type="button"  data-dismiss="modal">Close</button>

                            </div>



                        </form>




                    </div>

                </div>
            </div>
        </div>




        <!--End add employee modal-->

    </body>
</html>
