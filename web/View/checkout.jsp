<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="newpackage.User"%>
<%@page import="newpackage.UserDatabase"%>
<%@page import="newpackage.ConnectionPro"%>
<% User user = (User) session.getAttribute("loguser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Checkout</title>
        <%@include file="component/common_css_js.jsp" %>
    </head>
    <body>
        <%@include file="component/navbar.jsp"%>
        <button class="btn btn-outline-primary"><a href="welcome.jsp">Return Back</a></button>
        <!--checkout-->
<div class="container">
    <div class="row mt-5">

        <div class="col-lg-6">
            <!--card details-->
            <div class="card mt-5">
                <div class="card-body">
                    <h3 class="text-center mb-5">Selected Items</h3>
                    <div class="cart-body"></div> 

                </div>
            </div>
        </div>
        <div class="col-lg-6">
            <!--card details-->
            <div class="card mt-5">
                <div class="card-body">
                    <h3 class="text-center mb-5">Order Details</h3>
                    <form action="#">
                        <div class="form-group">
    <label for="exampleInputEmail1">Email Address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Email" value="<%=user.getEmail()%>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
                        <div class="form-group">
                        <label for="exampleInputEmail1">Phone</label>
                        <input type="text" class="form-control" id="name" placeholder="Phone Number" value="">
                    </div>
                         <div class="form-group">
    <label for="exampleFormControlTextarea1">Your Shipping Address</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" placeholder="Enter Address" rows="3"></textarea>
  </div>
                        
                        <div class="form-group">
                        <label for="exampleFormControlTextarea1">Payment Method</label>
                        <select>
                            <option>Cash On Delivery</option>
                            <option>bKash</option>
                           
                        </select>             
                    </div>
                    <div class="container text-center">
                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#final">Confirm Order</button>
                    </div>
                    </form>
                    

                </div>
            </div>
        </div>
    </div>
</div>
    <!-- Footer -->
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <footer class="page-footer font-small mdb-color lighten-3 pt-4">

                <!-- Footer Links -->
                <div class="container text-center text-md-left">

                    <!-- Grid row -->
                    <div class="row">

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 mr-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Content -->
                            <h5 class="font-weight-bold text-uppercase mb-4">DemoBeauty</h5>
                            <p>DemoBeauty is an online beauty store.</p>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none">

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Links -->
                            <h5 class="font-weight-bold text-uppercase mb-4">Partner With Us</h5>
                            <p>To become our business partner please send an email to partner@demobeauty.com</p>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none">

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 mx-auto my-md-4 my-0 mt-4 mb-1">

                            <!-- Contact details -->
                            <h5 class="font-weight-bold text-uppercase mb-4">Address</h5>

                            <ul class="list-unstyled">
                                <li>
                                    <p>
                                        <i class="fas fa-home mr-3"></i>Dhaka,Bangladesh</p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fas fa-envelope mr-3"></i> support@demobeauty.com</p>
                                </li>
                                <li>
                                    <p>
                                        <i class="fas fa-phone mr-3"></i> +880961177777</p>
                                </li>

                            </ul>

                        </div>
                        <!-- Grid column -->

                        <hr class="clearfix w-100 d-md-none">

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 text-center mx-auto my-4">

                            <!-- Social buttons -->
                            <h5 class="font-weight-bold text-uppercase mb-4">Follow Us</h5>

                            <!-- Facebook -->
                            <p><a type="button" class="btn-floating btn-fb">
                                    <img src="https://img.icons8.com/ios-filled/30/000000/facebook-new.png"/>
                                </a></p>
                            <!-- Twitter -->
                            <p><a type="button" class="btn-floating btn-tw">
                                    <img src="https://img.icons8.com/cotton/30/000000/twitter.png"/>
                                </a></p>
                            <!-- Google +-->
                            <p><a type="button" class="btn-floating btn-tw">
                                    <img src="https://img.icons8.com/officel/30/000000/instagram-new.png"/>
                                </a></p>
                        </div>
                        <!-- Grid column -->

                    </div>
                    <!-- Grid row -->

                </div>
                <!-- Footer Links -->

                <!-- Copyright -->
                <div class="footer-copyright text-center py-3">© 2020 Copyright:
                    <a href="about.jsp">DemoBeauty.com</a>
                </div>
                <!-- Copyright -->

            </footer>
            <!-- Footer -->
        </div>
    </div>
</div>

<script src="https://kit.fontawesome.com/a076d05399.js"></script>
<script src= 
        "https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
</script> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
    </body>
</html>
