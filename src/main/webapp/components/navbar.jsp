
<%@page import="com.mycompany.e.com.entities.User"%>
<%
    User user1 = (User) session.getAttribute("current_user");

%>
<nav class="navbar navbar-expand-lg navbar-dark fixed-top custom">
    <div class="container">
        <a class="navbar-brand" href="#">Shopping</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav me-auto mr-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="about.jsp">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="product.jsp">Product</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link " aria-current="page" href="contact.jsp">Contact</a>
                </li>

            </ul>

            <ul class = "navbar-nav ml-auto ">
                 <li class="nav-item active">
                    <a class="nav-link" href="#!" data-toggle="modal" data-target="#cart">  <i class="fa fa-cart-plus"  style="font-size: 20px;"></i> <span class="ml-0 cart-items">( 0 )</span>  </a>
                </li>
                <%                    if (user1 == null) {

                %>
                <li class="nav-item">
                    <a href="login.jsp" class="nav-link">Login</a>
                </li>
                <li class="nav-item">
                    <a href="register.jsp" class="nav-link">Register</a>
                </li>
                
                <%                        } else {


                %>
                <li class="nav-item active">
                    <a class="nav-link" href="<%=  user1.getUserType().equals("admin") ? "admin.jsp" : "normal.jsp"%>"><%= user1.getUserName()%> </a>
                </li>

                <li class="nav-item active">
                    <a class="nav-link" href="LogoutServlet">Logout </a>
                </li>



                <%    }

                %>
            </ul>
        </div>
    </div>
</nav>