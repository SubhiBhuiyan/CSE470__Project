<%@page import="newpackage.Category"%>
<%@page import="newpackage.CategoryDatabase"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.Product"%>
<%@page import="newpackage.ProductDatabase"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page import="newpackage.Helper"%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    response.setHeader("Cache-Control", "no-cache");
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", -1);
    User user = (User) session.getAttribute("loguser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
        <%@include file="component/common_css_js.jsp" %>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    </head>
    <body>
        <%@include file="component/navbar.jsp"%>
        
         
         <div class="container-fluid">
        <h3>Welcome <%=user.getName()%></h3>
        
        <p><button style='font-size:27px'><a href="checkout.jsp">MyCart<i class='fas fa-shopping-cart'></i></button></p>

        <div class="row mt-3 mx-2">

            <%
                String cat = request.getParameter("category");

                ProductDatabase proReg = new ProductDatabase(ConnectionPro.getConnection());
                List<Product> list = null;

                if (cat == null) {
                    list = proReg.getAllProducts();
                } else if (cat.trim().equals("all")) {
                    list = proReg.getAllProducts();
                } else {
                    int cid = Integer.parseInt(cat.trim());
                    list = proReg.getAllProductsById(cid);
                }

                CategoryDatabase catReg = new CategoryDatabase(ConnectionPro.getConnection());
                List<Category> listcat = catReg.getAllcategories();
            %>
            <!--show categories-->
            <div class="col-md-2">
                <div class="list-group mt-4">
                    <a href="welcome.jsp?category=all" class="list-group-item list-group-item-action active">
                        All Products
                    </a>

                    <%
                        for (Category category : listcat) {
                    %>
                    <a href="welcome.jsp?category=<%=category.getCatId()%>" class="list-group-item list-group-item-action"><%=category.getCatTitle()%></a>
                    <% }%>


                </div>
                    <p><button class="btn btn-outline-primary"><a href="LogoutServlet">Log Out</a></button></p>
            </div>
                    
            <!--show products-->
            <div class="col-md-10">
                <!--row-->
                <div class="row mt-4 ">
                    <!--col:12-->
                    <div class="col-md-12">
                        <div class="card-columns ">
                            <!--looping through products-->
                            <%
                                for (Product p : list) {
                            %>

                            <!--product card-->
                            <div class="card product-card">

                                <img class="card-img-top"  src="beautyProducts/<%=p.getpPic()%>" alt="Card image cap">
                                <div class="card-body">
                                    <h5 class="card-title"><%=p.getpName()%></h5>
                                    <p class="card-text"><%=Helper.get10Words(p.getpDesc())%></p>
                                </div>

                                <div class="card-footer text-center">
                                    <button class="btn btn-dark text-white" onclick="add_to_cart(<%=p.getpId()%>, '<%=p.getpName()%>',<%=p.getPriceAfterDiscount()%>)">Add To Cart</button>
                                    <button class="btn btn-outline-success ">&#2547; <%=p.getPriceAfterDiscount()%>/- <span class=" discount-label"><del>&#2547; <%=p.getpPrice()%></del> <%=p.getpDiscount()%>% off</span></button>
                                </div>
                            </div>

                            <%}
                                if (list.size() == 0) {
                                    out.println("<h3>No Items in this Category</h3>");
                                }

                            %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        
        
    </body>
</html>
