<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="neu.edu.cs5200.project.* ,java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>League of Legends</title>
<link href = "css/bootstrap.min.css" rel ="stylesheet">
<link href = "css/bootstrap-theme.min.css" rel ="stylesheet">
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

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

.navbar-comment { background-color: #EFEEF7}
.navbar-comment .navbar-nav>.active>a:hover,.navbar-comment .navbar-nav>li>a:hover, .navbar-comment .navbar-nav>li>a:focus { background-color: #FFFFFF}
.navbar-comment .navbar-nav>.active>a,.navbar-comment .navbar-nav>.open>a,.navbar-comment .navbar-nav>.open>a, .navbar-comment .navbar-nav>.open>a:hover,.navbar-comment .navbar-nav>.open>a, .navbar-comment .navbar-nav>.open>a:hover, .navbar-comment .navbar-nav>.open>a:focus { background-color: #080808}
.dropdown-menu { background-color: #FFFFFF}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-color: #428BCA}
.navbar-comment { background-image: none; }
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-image: none; }
.navbar-comment { border-color: #080808}
.navbar-comment .navbar-brand { color: #999999}
.navbar-comment .navbar-brand:hover { color: #FFFFFF}
.navbar-comment .navbar-nav>li>a { color: #999999}
.navbar-comment .navbar-nav>li>a:hover, .navbar-comment .navbar-nav>li>a:focus { color: #FFFFFF}
.navbar-comment .navbar-nav>.active>a,.navbar-comment .navbar-nav>.open>a, .navbar-comment .navbar-nav>.open>a:hover, .navbar-comment .navbar-nav>.open>a:focus { color: #FFFFFF}
.navbar-comment .navbar-nav>.active>a:hover, .navbar-comment .navbar-nav>.active>a:focus { color: #FFFFFF}
.dropdown-menu>li>a { color: #333333}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { color: #FFFFFF}
.navbar-comment .navbar-nav>.dropdown>a .caret { border-top-color: #999999}
.navbar-comment .navbar-nav>.dropdown>a:hover .caret { border-top-color: #FFFFFF}
.navbar-comment .navbar-nav>.dropdown>a .caret { border-bottom-color: #999999}
.navbar-comment .navbar-nav>.dropdown>a:hover .caret { border-bottom-color: #FFFFFF}
body {
    background-color: #E5E4ED;
} 

.center {
	position: relative;
    bottom: -15px; 
    width: 20%;
}

.get-down {
	position: relative;
	top: 70px;
}

.center-comment{
	width: 95%;
	margin-left: 10px;
	margin-bottom: 5px;
}

.margin-post-right {
    margin-right: 10px;
}
.margin-post-left {
    margin-left: 10px
}
.margin-post-top {
	margin-top: 10px;
}
.margin-post-bottom {
    margin-bottom: 5px;
}

.margin-word {
	margin-left: 13px;
	margin-top: 10px;
}

.margin-word-delete {
	margin-left: -53px;
	margin-top: 10px;
}

.margin-date {
	position: relative;
	top: -8px;
	left: 48px;
	margin-left: 13px;
}
.post-font {
	font-family: sans-serif;
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 100;
	line-height: 18.5714302062988px;
}

.word-font {
	font-family: 'Gill Sans MT';
	font-size: 18px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 25.7142868041992px;
}

.word-comment-font {
	font-family: 'Gill Sans MT';
	font-size: 14px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 25.7142868041992px;
}

.word-date-font {
	font-family: Calibri;
	font-size: 12px;
	font-style: italic;
	font-variant: normal;
	font-weight: 100;
	line-height: 5px;
}

.position3 {
	position: relative;
    bottom: -360px; 
}

.center-icon{
	width: 250%;
	right: 55px;
	margin-left: 10px;
	margin-bottom: 5px;
}

</style>
</head>
<body>
	<%	
	User user = (User) request.getAttribute("user");
	String firstName = user.getFirstName();
	String lastName = user.getLastName();
	String username = user.getUsername();
	PostDao dao = new PostDao();
	CommentDao commentDao = new CommentDao();
	ThumbUpDao thumbupDao = new ThumbUpDao();
	List<Post> posts = dao.findHomePagePosts(user);
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
				
				<li><a href = "#"><font color="white"><%=firstName%> <%=lastName%>'s Home</font></a></li>
				<li><a href = "/Project/blogs.jsp"><font color="white">Blogs</font></a></li>
				<li><a href = "#" id= "myProfileLink" type = "submit"><font color="white">Profile</font></a></li>
				<li><a href = "#" id= "myFriendLink"><font color="white">Friends</font></a></li>
				<li><a href = "/Project/jwsTest.jsp"><font color="white">Privilege</font></a></li>
				<li><a href = "#" id= "myLink" type = "submit"><font color="white">Search</font></a></li>
				<li><a href = "#contact" data-toggle="modal"><font color="white">Contact Us</font></a></li>
				<li><a href = "/Project/LOLLogin.html"><font color="white">Logoff</font></a></li>
				</ul>
			</div>
			
			<form id = "myForm" action="/Project/searchAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
			
			<form id = "myProfileForm" action="/Project/profileAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
			
			<form id = "myFriendsForm" action="/Project/friendAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
		</div>
	</div>
	
	<div class="row get-down">
	
  		<div class="form-group col-sm-3">
		
  		</div>
  		<form action="/Project/loginAction2" method="post">
  		<div class="form-group col-sm-5">
  			<label class = "margin-post-left control-label">What's on your mind:</label>
  			
  			<textarea name="content" class = "form-control" rows = "4" placeholder = "What's on your mind..."></textarea>
  			<input name="username" value="<%=username%>" type = "hidden"></input>
  			<div class = "navbar navbar-default footer">
					<button name="action" value="createPost" class = "margin-post-right center btn btn-md btn-primary pull-right" type = "submit" >Post</button>
					<p class = "post-font margin-post-left">Add photo to your post</p>
    				<input class = "margin-post-bottom margin-post-left" type="file" id="exampleInputFile">
			</div>
			
			<%int count=0;
			  String countStr="";
			%>
		<%	for(Post post : posts) {
			count++;
			countStr = Integer.toString(count);
			List<Comment> comments = commentDao.findCommentByPost(post);
			List<ThumbUp> thumbups = thumbupDao.findThumbupByPost(post);
%>			
			<div class = "navbar navbar-default">
			<p class="margin-word word-font"> <%=post.getUser().getFirstName()%> <%=post.getUser().getLastName()%>:</p>
			<p class="margin-word word-font"><%=post.getContent()%> </p>
			<input name="post<%=count%>" value="<%=post.getId()%>" type = "hidden"></input>
			<button name="action" value= "like<%=count%>" class = "btn btn-md btn-link" type = "submit" >Like</button>
			<button onclick="return false;" id = "comment<%=countStr %>" class = "btn btn-md btn-link">Comment</button>
			<button name="action" value = "remove<%=count%>" class = "btn btn-md btn-link" type = "submit" >Delete</button>
			<%for (ThumbUp thumbup : thumbups) { %>
			<div class = "navbar-comment">
			<p class="margin-word word-comment-font"><%=thumbup.getUser().getFirstName()%> likes this Post</p>
			</div>
			<%} %>
			<div class = "row">
				<div class = "col-sm-11">
					<input id = "inputComment<%=count%>" name="postComment<%=count%>" type = "text" class = "center-comment form-control " placeholder = "Write a comment..."></input>
				</div>
				<div class = "col-sm-1">
				<button name="action" value= "comment<%=count%>" class="center-icon list-group-item" type = "submit" ><i class="fa fa-pencil fa-lg"></i></button>			
				</div>
			</div>
			<% 	int countComment=0;
				for(Comment comment : comments) { 
				countComment++;
			%>
			<div class = "navbar-comment">
				<div class = "row">
				<div class = "col-sm-11">
					<p class="margin-word word-comment-font"><%=comment.getUser().getFirstName()%> <%=comment.getUser().getLastName()%> : <%=comment.getComment()%> </p>
					<%Date date = new Date(); %>
					<p class="margin-date word-date-font"><%=date.toString() %></p>
				</div>
				<div class = "col-sm-1">
					<button name="countPost" value="deleteComment<%=count%>" style="display: none;"></button>
					<button name="action" value= "delete<%=countComment%>" class="btn-sm btn-link margin-word-delete" type = "submit" >Delete</button>			
				</div>
				</div>
			</div>
				<%} %>
			</div>
<%
	}
%>
		</div>
		<input name="count" value="<%=count%>" type = "hidden"></input>
 		</form>
  		<div class="form-group col-sm-4">
  
  		</div>
	</div>
	
	<div class = "position3 navbar navbar-static-bottom">
	
		<div class= "container">
			<p class = "navbar-text pull-left">Site Built By Lin Zhu</p>
			<a href = "http://na.leagueoflegends.com/" class = "navbar-btn btn-sm btn-primary btn pull-right">League of Legends</a>	
		</div>
	
	</div>
	
	<div class = "modal fade" id = "contact" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
			<form class = "form-horizontal" action="/Project/loginAction2" method="post">
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
					<input name="username" value="<%=username%>" type = "hidden"></input>
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
		
		$('#myProfileLink').click(function() {
			$('#myProfileForm').submit();
		});
		
		$('#myFriendLink').click(function() {
			$('#myFriendsForm').submit();
		});
		
		<%while (count>0){ 
			System.out.println("hello from jsp!"+count);
		%>
		count123 = <%=count%>;
		comment = "#comment" + count123;
		$(comment).click(function() {
			$("#inputComment" + <%=count%>).focus();
		});
	
	
	<%	count--;
		}
	%>
	});
	</script>

</body>
</html>