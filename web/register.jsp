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
                }
            %>
		<div id="top-bar" class="container">
			<div class="row">
                                <div class="span4">
				</div>
				<div class="span8">
					<div class="account pull-right">
						<ul class="user-menu">	
                                                                         <li><a href="DisplayProducts">Products</a></li>  
                                                                         <li><a  href="cart.jsp">Cart <img src="themes/images/cart.png" ><%= i%></a> </li>    
                                                                         <li><a href="index.jsp">Home</a></li>
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
				<h4><span>Login</span></h4>
			</section>			
			<section class="main-content">				
				<div class="row">
					<div class="span5">					
						<h4 class="title"><span class="text"><strong>Login</strong> Form</span></h4>
						<form action="Authentification3" method="post">
							<input type="hidden" name="next" value="/">
							<fieldset>
								<div class="control-group">
									<label class="control-label">Username</label>
									<div class="controls">
										<input type="text" placeholder="Enter your username" name="username" id="username" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">Username</label>
									<div class="controls">
										<input type="password" placeholder="Enter your password" name="password" id="password" class="input-xlarge">
									</div>
								</div>
								<div class="control-group">
									<input tabindex="3" class="btn btn-inverse large" type="submit" value="Sign into your account">
									<hr>
									
								</div>
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