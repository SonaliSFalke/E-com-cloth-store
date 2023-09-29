<%-- 
    Document   : contact
    Created on : 23-Sept-2023, 12:43:18 am
    Author     : ASUS
--%>

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
        <!-- CONTACT Banner  start -->
  <div id="banner">
    <img src="https://www.tsm13.com/img/contact-us.jpg" alt=" CONTACT banner image" class="w-100" style="height: 60vh;">
  </div>
  <div class="abt-head container">
    <h1>CONTACT WITH US</h1>
    <H2>__________</H2>
    
  </div>
 
  <!-- CONTACT Banner  section End -->

  <!-- contact form section start -->
    <div id="con-form">
      <div class="con-form container">
        <div class="con-map ">
          <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3783.6369126941418!2d73.8086233750126!3d18.500098682589595!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bfc72019bc63%3A0x461f2b0ea58ba39!2sVinsys%20-%20IT%20Corporate%20Training%20Company%20%7C%20IT%20Professional%20Courses!5e0!3m2!1sen!2sin!4v1689699080645!5m2!1sen!2sin" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        <div class="feed-form">
          <form class="form">
            <div class="input-group mb-2 mr-sm-2">
              <div class="input-group-prepend">
                <div class="input-group-text">📧</div>
              </div>
              <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Username">
            </div>
            <div class="input-group mb-2 mr-sm-2">
              <div class="input-group-prepend">
                <div class="input-group-text">🔑</div>
              </div>
              <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="password">
            </div>
            <div class="input-group mb-2 mr-sm-2">
              <div class="input-group-prepend">
                <div class="input-group-text">📞</div>
              </div>
              <input type="text" class="form-control" id="inlineFormInputGroupUsername2" placeholder="Mobile number">
            </div>
          
          
            <button type="submit" class="btn btn-primary mb-2">Submit</button>
          </form>
        </div>
      </div>
      
    </div>
  <!-- contact form section end -->
  
  
  

        <%@include file="components/footer.jsp" %>
    </body>
</html>
