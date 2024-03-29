<%-- 
    Document   : products
    Created on : 16 janv. 2020, 05:12:59
    Author     : DELL-10
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="General.Panier"%>
<%@page import="General.Produit"%>
<%@page import="General.ProductInfos"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Shopper</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta name="description" content="">
		<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->
		<!-- bootstrap -->
		<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">      
		<link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">		
		<link href="themes/css/bootstrappage.css" rel="stylesheet"/>
		
		<!-- global styles -->
		<link href="themes/css/flexslider.css" rel="stylesheet"/>
		<link href="themes/css/main.css" rel="stylesheet"/>

		<!-- scripts -->
		<script src="themes/js/jquery-1.7.2.min.js"></script>
		<script src="bootstrap/js/bootstrap.min.js"></script>				
		<script src="themes/js/superfish.js"></script>	
		<script src="themes/js/jquery.scrolltotop.js"></script>
		<!--[if lt IE 9]>			
			<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	</head>
    <body>
            <%  HttpSession sessio=request.getSession();
                String msg = (String)sessio.getAttribute("msg");
                List<Panier> paniers =  new ArrayList<>();
                int x=0; int i=0;
                if (msg!= null && msg.equalsIgnoreCase("valide") && session!=null){
                        x=1; 
                        paniers = (List<Panier>) sessio.getAttribute("listpr");
                        if (paniers != null) {
                            i = paniers.size();
                        }
                }
                else if(session!=null){
                     paniers = (List<Panier>) sessio.getAttribute("listpr");
                    if (paniers != null) {
                        i = paniers.size();
                    }}
                else{
                List<Panier> listpr =  new ArrayList<>();
                sessio.setAttribute("listpr",listpr);
                x=0;
                }
            %>
		<div id="top-bar" class="container">
			<div class="row">
                                <div class="span4">
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">	
                                                                        <li><a href="index.jsp">Home</a></li>
                                                                         <li><a href="DisplayProducts">Products</a></li>  
                                                                         <li><a  href="cart.jsp">Cart <img src="themes/images/cart.png" ><%= i%></a> </li> 
							<% if (x==0){ %> <li><a href="register.jsp">Login</a></li>	
                                                        <% } else { %>   <li><a href="AjouterProduit.jsp">New Product</a></li>
                                                                          <li><a href="Logout">Logout</a></li>       
                                                        <%}%>	      		
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div id="wrapper" class="container">
			<section class="navbar main-menu">
				<div class="navbar-inner main-menu">				
					<a href="index.jsp" class="logo pull-left"><img src="themes/images//logo.png" class="site_logo" alt=""></a>
					
				</div>
			</section>			
			<section class="header_text sub">
			<img class="pageBanner" src="themes/images/pageBanner.png" alt="New products" >
				<h4><span>ADD PRODUCT</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
				
                                    <div class="span7" >			
						<h4 class="title"><span class="text"><strong>Product</strong> Form</span></h4>
						<form action="AjouterProduit" method="post" class="form-stacked" enctype="multipart/form-data">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Product name</label>
									<div class="controls">
										<input type="text" placeholder="Enter product name"  name="name" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Price:</label>
									<div class="controls">
										<input type="text" placeholder="Enter the price" name="price" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Quantity</label>
									<div class="controls">
										<input type="text" placeholder="Enter quantity" name="quantity" class="input-xlarge">
									</div>
								</div>	
                                                                 <div class="control-group">
									<label class="control-label">Image:</label>
									<div class="controls">
										<input type="file"  name="image" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
								</div>
								<hr>
								<div class="actions"><input tabindex="9" class="btn btn-inverse large" type="submit" value="Add"></div>
							</fieldset>
						</form>					
					</div>				
				</div>
			</section>			
			
			<section id="copyright">
				<span>Copyright 2013 bootstrappage template  All right reserved.</span>
			</section>
		</div>
		<script src="themes/js/common.js"></script>
		<script>
			$(document).ready(function() {
				$('#checkout').click(function (e) {
					document.location.href = "checkout.html";
				})
			});
		</script>		
    </body>
</html>
