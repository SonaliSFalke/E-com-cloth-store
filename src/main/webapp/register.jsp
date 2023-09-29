

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-com register</title>
        <%@include  file="components/css_js_link.jsp" %>
    </head>
    <body>

        <%@include file="components/navbar.jsp" %>
        
        <form action="RegisterServlet" method="post"  class="form-style">
            <%@include file="components/message.jsp" %>
            
            <div class="form-head">
                <h1>Register Here ...!</h1>
            </div>
            <div class="container log-form ">
                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">👨🏻‍💻</div>
                    </div>
                    <input type="text" name="user_name" class="form-control" id="inlineFormInputGroupUsername2" placeholder="User Name">
                </div>
                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">📧</div>
                    </div>
                    <input type="email" name="user_email" class="form-control" id="umail" placeholder="User Email">
                </div>
                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">🔒</div>
                    </div>
                    <input type="text" name="user_password" class="form-control" id="pass" placeholder="User Password">
                </div>

                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">☎</div>
                    </div>
                    <input type="text" name="user_phone" class="form-control" id="mbl" placeholder="User Mobile Number">
                </div>

                <div class="form-field input-group mb-2 mr-sm-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text">🔒</div>
                    </div>
                    <input type="text" name="user_address" class="form-control" id="conpass" placeholder="user Address">
                </div>
                <div class="form-field sub-btn input-group mb-2 mr-sm-2">
                    <button>Sign In</button>

                </div>
                <div class="form-field sub-btn input-group mb-2 mr-sm-2">
                    <p>Already have an Account? <a href="login.jsp">LogIn</a></p>
                </div>
            </div>


        </form>
    </body>
</html>
