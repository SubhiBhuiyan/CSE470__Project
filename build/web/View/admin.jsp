<%@page import="newpackage.Product"%>
<%@page import="newpackage.UserDatabase"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@page import="java.util.List"%>
<%@page import="newpackage.ConnectionPro"%>
<%@page import="java.lang.String"%>
<%@page import="newpackage.Category"%>
<%@page import="newpackage.CategoryDatabase"%>
<%@page import="newpackage.ProductDatabase"%>
<%@page import="newpackage.User"%>
<%
    response.setHeader("Cache-control", "no-cache,no-store,must-revalidate");
    User user = (User) session.getAttribute("loguser");
    if (user == null) {
        session.setAttribute("message", "You are not logged in!");
        response.sendRedirect("index.jsp");
        return;

    } else {
        if (user.getUser_type().equals("normal")) {
            session.setAttribute("message", "You are not an admin");
            response.sendRedirect("welcome.jsp");

        }
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%    CategoryDatabase catReg = new CategoryDatabase(ConnectionPro.getConnection());
    List<Category> catlist = catReg.getAllcategories();
    Hashtable<Integer, String> cat = catReg.getCategory();

    UserDatabase regUser = new UserDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> map = regUser.getUserCount();
    List<User> list = regUser.getUserList();

    ProductDatabase proReg = new ProductDatabase(ConnectionPro.getConnection());
    Hashtable<Integer, String> prod = proReg.getProductCount();
    List<Product> prodlist = proReg.getAllProducts();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title class="text-center">Admin Panel</title>
        <%@include file="component/common_css_js.jsp" %>
        <link href="css/admin.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <%@include file="component/navbar.jsp"%>

        <div class="container admin">
            <h2> Admin Panel</h2>
            <button class="btn btn-outline-primary"><a href="LogoutServlet">Log Out</a></button> 
            <div class="row mt-3">
                <!--usercount-->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid rounded-circle" src="img/group.png" alt="user_icon">
                            </div>
                            <h1 style="color:#d67c3c"><%=map.size()%></h1>
                            <h1>Users</h1>
                        </div>
                    </div>
                </div>
                <!--categories-->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid " src="img/cato.png" alt="user_icon">
                            </div>
                            <h1 style="color:#43bcd1"><%=cat.size()%></h1>
                            <h1>Categories</h1>
                        </div>
                    </div>
                </div>
                <!--products-->
                <div class="col-md-4">
                    <div class="card text-center">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid rounded-circle" src="img/prod.png" alt="user_icon">
                            </div>
                            <h1 style="color:#5cd695"><%=prod.size()%></h1>
                            <h1>Products</h1>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-6">
                    <div class="card text-center" data-toggle="modal" data-target="#add-category-modal">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid " src="img/cate.png" alt="user_icon">
                            </div>

                            <h1 class="text-muted">Add Category</h1>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card text-center" data-toggle="modal" data-target="#add-product-modal">
                        <div class="card-body">
                            <div class="container">
                                <img style="max-width:125px;" class="img-fluid " src="img/mak.png" alt="user_icon">
                            </div>

                            <h1 class="text-muted">Add Products</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--category modal-->
        <!-- Modal -->
        <div class="modal fade" id="add-category-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Fill Category Details</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <form action="ProductOperationServlet" method="post">
                            <input type="hidden" name="operation" value="addcategory">
                            <div class="form-group">
                                <input type="text" class="form-control" name="catTitle" placeholder="Enter Category Title" required />
                            </div>
                            <div class="form-group">
                                <textarea style="height: 200px;" class="form-control" name="catDescription" placeholder="Enter Category Description" required></textarea>
                            </div>
                            <div class="container text-center">
                                <button class="btn btn-outline-success">Add Category</button>

                            </div>
                        </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>

                    </div>
                </div>
            </div>
        </div>
        <!--product modal-->
        <!-- Modal -->
        <div class="modal fade" id="add-product-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Product Details</h5>
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
                                <input type="text" class="form-control" placeholder="Enter title of the product" name="pName" required/>                               
                            </div>
                           <!--product description-->
                            <div class="form-group">
                                <textarea style="height: 150px;" class="form-control" placeholder="Enter Product Description" name="pDesc" required></textarea>
                            </div>

                            <!--product price-->
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter price of the product" name="pPrice" required/>                               
                            </div>
                            <!--product discount-->
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product discount" name="pDiscount" required/>                               
                            </div>

                            <!--product quantity-->
                            <div class="form-group">
                                <input type="number" class="form-control" placeholder="Enter product quantity" name="pQuantity" required/>                               
                            </div>

                            <!--product category-->
                            <div class="form-group">
                                <select name="catId" class="form-control">
                                      <%

                                        Set<Map.Entry<Integer, String>> entries = cat.entrySet();
                                        for (Map.Entry<Integer, String> entry : entries) {
                                    %>
                                    <option value="<%=entry.getKey()%>"><%= entry.getValue() + " " + entry.getKey()%> </option>
                                    <%}%> 
                                </select>
                            </div>
                                    <!--product file-->
                            <div class="form-group">
                                <label for="">Select Product Picture</label>
                                <br>
                                <input type="file"  name="pPic" enctype = "multipart/form-data">
                            </div>
                                    <!--submit button-->
                            <div class="container text-center">
                                <button class="btn btn-outline-success">Add Product</button>
                            </div>
                       </form>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
