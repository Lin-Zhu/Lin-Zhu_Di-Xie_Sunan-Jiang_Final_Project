<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="neu.edu.cs5200.project.* ,java.util.*"%>
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
	<%	
		User user = (User) request.getAttribute("user");
		String username = user.getUsername();
		String firstName = user.getFirstName();
		String lastName = user.getLastName();
	%>
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
				
				<li><a href = "#" id = "mySearchLink"><font color="white"><%=firstName%> <%=lastName%>'s Home</font></a></li>
				<li><a href = "#"><font color="white">Blogs</font></a></li>
				<li><a href = "#" id = "myProfileLink" type = "submit"><font color="white">Profile</font></a></li>
				<li><a href = "#"><font color="white">Friends</font></a></li>
				<li><a href = "/Project/jwsTest.jsp"><font color="white">Privilege</font></a></li>
				<li><a href = "#" id= "myLink"><font color="white">Search</font></a></li>
				<li><a href = "#contact" data-toggle="modal"><font color="white">Contact Us</font></a></li>
				<li><a href = "/Project/LOLLogin.html"><font color="white">Logoff</font></a></li>
				
				</ul>
			</div>
			<form id = "myForm" action="/Project/searchAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
			<form id = "mySearchForm" action="/Project/loginAction2" method="post">	
			<input name="username" value="<%=username%>" type = "hidden"></input>
			</form>
			<form id = "myProfileForm" action="/Project/profileAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
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
		  <div class="modal-dialog"><%=firstName%> <%=lastName%></div>

    <div class="basicInfo" id="basic" style="display: block">
			<div><span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">New Friends</label>
			</span><br /></div>
		    <div><span><select  name="gender" style="display:inline">  
						    <option value="NickName" selected="selected">Username</option>  
						    <option value="Gender">Gender</option>  
						    <option value="SummonerName">SummonerName</option>
						    <option value="Location">Location</option>
						    
						    </select><input name="nickname" style="display:inline" /><input  type="button" value="search" /></span> </div>
		    <div class="friendslist">
		    	<ul class="friends">
		    		<form id = "myFriendForm" action="/Project/friendAction1" method="post">
		    		<%	UserDao userDao = new UserDao();
		    			List<User> users = userDao.findAllUsers();
		    			int count = 0;
		    			for (User user1: users){
		    				count++;
		    		%>
				    <li id="friend1" style="list-style-type: none; font-family: 'Comic Sans MS', cursive; margin: 10px; dispaly:block"> <%=user1.getFirstName() %> <%=user1.getLastName() %>
<!-- 				    <input id = "addFriend" style="float:right; height:30px"  type="button" value="add" /> -->
				    <button id = "addFriend<%=count%>" name="action" value= "Friend<%=count%>" style="float:right; height:30px" type = "submit" >add</button></li>		    
					
					<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
					<input name="userId<%=count%>" class="form-control" value="<%=user1.getId()%>" type = "hidden"></input>
<%-- 					<input name="action" class="form-control" value="Friend<%=count%>" type = "hidden"></input> --%>
					
					<%
		    			}
					%>	
					<input name="count" class="form-control" value="<%=count%>" type = "hidden"></input>
					</form>
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
	<script type="text/javascript">
	$(document).one("ready",function(){
		var count123;
		var comment = "";
		$('#myLink').click(function() {
		    $('#myForm').submit();
		});

		$('#mySearchLink').click(function() {
	    	$('#mySearchForm').submit();
		});
	
	
		$('#myProfileLink').click(function() {
			$('#myProfileForm').submit();
		});
		
		$('#addFriend').click(function() {
			$('#myFriendForm').submit();
		});
		
		<%while (count>0){ 
			System.out.println("hello from jsp!"+count);
		%>
		count123 = <%=count%>;
		comment = "#addFriend" + count123;
		$(comment).click(function() {
			$("#myFriendForm").submit();
		});
	
	
	<%	count--;
		}
	%>
	
	});
	</script>
</body>
</html>