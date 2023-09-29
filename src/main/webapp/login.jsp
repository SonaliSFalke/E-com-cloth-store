

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-com login</title>
        <%@include file="components/css_js_link.jsp" %>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>
        <form action="LoginServlet" method="post" class="form-style">
                        <div class="form-head">
                <h1>Login Here ...!</h1>
            </div>
            <div class="container log-form ">
                    <%@include file="components/message.jsp" %>

                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">📧</div>
                    </div>
                    <input type="email" name="email" class="form-control" id="umail" placeholder="User Email">
                </div>
                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">🔒</div>
                    </div>
                    <input type="password" name="password" class="form-control" id="pass" placeholder="User Password">
                </div>

                <div class="form-field sub-btn input-group mb-2 mr-sm-2">
                    <button>Log In</button>
                </div>
                <div class="form-field sub-btn input-group mb-2 mr-sm-2">
                    <p>New User? <a href="register.jsp">Sign_Up</a> </p>
                </div>
            </div>


        </form>

    </body>
</html>
