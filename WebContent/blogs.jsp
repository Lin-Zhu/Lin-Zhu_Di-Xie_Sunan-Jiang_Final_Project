<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>League of Legends</title>
<link href = "css/bootstrap.min.css" rel ="stylesheet">
<link href = "css/bootstrap-theme.min.css" rel ="stylesheet">

<style media="screen" type="text/css">
.navbar-inverse { background-color: #305BA6}
.navbar-inverse .navbar-nav>.active>a:hover,.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { background-color: #1B345E}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { background-color: #1B345E}
.dropdown-menu { background-color: #FFFFFF}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-color: #428BCA}
.navbar-inverse { background-image: none; }
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-image: none; }
.navbar-inverse { border-color: #305BA6}
.navbar-inverse .navbar-brand { color: #999999}
.navbar-inverse .navbar-brand:hover { color: #FFFFFF}
.navbar-inverse .navbar-nav>li>a { color: #999999}
.navbar-inverse .navbar-nav>li>a:hover, .navbar-inverse .navbar-nav>li>a:focus { color: #FFFFFF}
.navbar-inverse .navbar-nav>.active>a,.navbar-inverse .navbar-nav>.open>a, .navbar-inverse .navbar-nav>.open>a:hover, .navbar-inverse .navbar-nav>.open>a:focus { color: #FFFFFF}
.navbar-inverse .navbar-nav>.active>a:hover, .navbar-inverse .navbar-nav>.active>a:focus { color: #FFFFFF}
.dropdown-menu>li>a { color: #333333}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { color: #FFFFFF}
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-top-color: #999999}
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-top-color: #FFFFFF}
.navbar-inverse .navbar-nav>.dropdown>a .caret { border-bottom-color: #999999}
.navbar-inverse .navbar-nav>.dropdown>a:hover .caret { border-bottom-color: #FFFFFF}

body {
    background-color: #E5E4ED;
} 
</style>
<link href="css/box.css" rel="stylesheet" type="text/css">

<script type="text/javascript">  
    
</script>    
    

</head>
<body>
	<div class = "navbar navbar-inverse navbar-fixed-top">
		<div class = "container">
		<div class="navbar-header">
		
			<a href = "#" class = "navbar-brand">League of Legends</a>
			
			<button class = "navbar-toggle" data-toggle = "collapse" data-target = ".navHeaderCollapse" aria-expanded="false" aria-controls="navbar">
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
				<span class = "icon-bar"></span>
			</button>
		</div>	
			<div class = "collapse navbar-collapse navHeaderCollapse">
				<ul class = "nav navbar-nav navbar-right">
				
				<li><a href = "#"><font color="white">Home</font></a></li>
				<li><a href = "#"><font color="white">Blogs</font></a></li>
				<li><a href = "#"><font color="white">Profile</font></a></li>
				<li><a href = "#"><font color="white">Friends</font></a></li>
				<li><a href = "/Project/jwsTest.jsp"><font color="white">Privilege</font></a></li>
				<li><a href = "#"><font color="white">Search</font></a></li>
				<li><a href = "#contact" data-toggle="modal"><font color="white">Contact Us</font></a></li>
				<li><a href = "/Project/LOLLogin.html"><font color="white">Logoff</font></a></li>
				
				</ul>
			</div>
		</div>
	</div>
	
	
	
	<!-- div class = "navbar navbar-fixed-bottom">
	
		<div class= "container">
			<p class = "navbar-text pull-left">Site Built By Lin Zhu</p>
			<a href = "http://na.leagueoflegends.com/" class = "navbar-btn btn-sm btn-primary btn pull-right">League of Legends</a>	
		</div>
	
	</div-->
	
<div class="box">

	<div class="photo"><img src="pic/da5b7e1fc9873f07090ec1ebd364cc97.jpg" alt="" width="214" height="197"></div>
		  <div class="modal-dialog">NAME	</div>

    <div class="basicInfo" id="basic" style="display: block">
			<span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" style="font-size: 35px">blogs</label>
		     	  <span style="float:right"><input  type="button" value="new blog" /></span>
			</span><br />
		    <span><input name="nickname" style="display:inline" /><input  type="button" value="search" /></span> 
		    <div class="blogslist">
		    	<ul class="blogs" >
				    <li id="blog1" style="list-style-type: none; font-family: 'Comic Sans MS', cursive; margin: 10px; dispaly:block; margin-bottom: 10px"> 
				    		<div><span style="font-size: 30px">blog1 <input style="float:right"  type="button" value="edit" /><input style="float:right"  type="button" value="delete" /></span><br/>
				    			 <span style="margin-left:10px">post date: 2014-12-1</span><br/>
				    			 <span style="font-size: 20px">some demo contant here.</span>	
				    		</div></li>
				    <li id="blog2" style="list-style-type: none; font-family: 'Comic Sans MS', cursive; margin: 10px; dispaly:block; margin-bottom: 10px">
				    		<div><span style="font-size: 30px">blog2 <input style="float:right"  type="button" value="edit" /><input style="float:right"  type="button" value="delete" /></span><br/>
				    			 <span style="margin-left:10px">post date: 2014-12-2</span><br/>
				    			 <span style="font-size: 20px">some demo contant here.</span>	
				    		</div></li>
				    <li id="blog3" style="list-style-type: none; font-family: 'Comic Sans MS', cursive; margin: 10px; dispaly:block;margin-bottom: 10px">
							<div><span style="font-size: 30px">blog3 <input style="float:right"  type="button" value="edit" /><input style="float:right"  type="button" value="delete" /></span><br/>
				    			 <span style="margin-left:10px">post date: 2014-12-3</span><br/>
				    			 <span style="font-size: 20px">some demo contant here.</span>	
				    		</div></li>				    
				    <li id="blog4" style="list-style-type: none; font-family: 'Comic Sans MS', cursive; margin: 10px; dispaly:block; margin-bottom: 10px">
				     		<div><span style="font-size: 30px">blog4 <input style="float:right"  type="button" value="edit" /><input style="float:right"  type="button" value="delete" /></span><br/>
				    			 <span style="margin-left:10px">post date: 2014-12-3</span><br/>
				    			 <span style="font-size: 20px">some demo contant here.</span>	
				    		</div></li>		    
				</ul>
		    </div>	  
	<dir></dir>
	
</div>
</div>
	
	
	
	<div class = "modal fade" id = "contact" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
			<form class = "form-horizontal">
				<div class = "modal-header">
					<h4>Please leave your message here, thank you!</h4>
				</div>
				<div class = "modal-body">
					<div class = "form-group">
						<label for = "contact-name" class = "col-lg-2 control-label">Name:</label>
						<div class = "col-lg-10">
							<input type = "text" class = "form-control" id = "contact-name" placeholder = "Full Name">
						</div>
					</div>
					<div class = "form-group">
						<label for = "contact-email" class = "col-lg-2 control-label">Email:</label>
						<div class = "col-lg-10">
							<input type = "text" class = "form-control" id = "contact-name" placeholder = "you@example.com">
						</div>
					</div>
					<div class = "form-group">
						<label for = "contact-msg" class = "col-lg-2 control-label">Message:</label>
						<div class = "col-lg-10">
							<textarea class = "form-control" rows = "8"></textarea>
						</div>
					</div>
				</div>
				<div class = "modal-footer">
					<a class = "btn btn-default" data-dismiss = "modal">Close</a>
					<button class = "btn btn-primary" type = "submit">Submit</button>
				</div>
				</form>
			</div>
		</div>
	</div>
	
	
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>

</body>
</html>