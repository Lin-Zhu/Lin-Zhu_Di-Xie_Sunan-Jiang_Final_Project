<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="neu.edu.cs5200.project.* ,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
.InfoList {display:inline}
body {
    background-color: #E5E4ED;
} 
.box .basicInfo .InfoList form span span {
	text-align: left;
}
.nickname {
	font-family: "Comic Sans MS", cursive;
	text-align: left;
}
.nickname {
	font-size: 18px;
}
.gender {
}
.dob {
	font-size: 18px;
}
.BI {
	font-size: 24px;
}

.basicInfo {
	margin-top: 20px;
}
</style>
<link href="css/box.css" rel="stylesheet" type="text/css">

<script type="text/javascript">  
function edit(but){  
    var basic=document.getElementsByName("basic")[0];  
      
    if(but.value=='edit'){  
        for(var i=0;i<basic.elements.length;i++){  
            basic.elements[i].style.display="inline";  
            basic.elements[i].value=basic.elements[i].nextSibling.innerHTML;  
            basic.elements[i].nextSibling.style.display="none";  
            }  
        but.value='save';  
        }else{  
            for(var i=0;i<basic.elements.length;i++){  
            basic.elements[i].style.display="none";  
            basic.elements[i].nextSibling.innerHTML=basic.elements[i].value;  
            basic.elements[i].nextSibling.style.display="inline";  
            }  
            but.value='edit';  
          	basic.submit();  
            }  
    }  


function edit1(but){  
    var contact=document.getElementsByName("contact")[0];  
      
    if(but.value=='edit'){  
        for(var i=0;i<contact.elements.length;i++){  
            contact.elements[i].style.display="inline";  
            contact.elements[i].value=contact.elements[i].nextSibling.innerHTML;  
	        contact.elements[i].nextSibling.style.display="none";  
            }  
        but.value='save';  
        }else{  
            for(var i=0;i<contact.elements.length;i++){  
            contact.elements[i].style.display="none";  
            contact.elements[i].nextSibling.innerHTML=contact.elements[i].value;  
         	contact.elements[i].nextSibling.style.display="inline";  
            }  
            but.value='edit';  
  			contact.submit();  
            }  
    }
    
function edit2(but){  
    var work=document.getElementsByName("work")[0];  
      
    if(but.value=='edit'){  
        for(var i=0;i<work.elements.length;i++){  
            work.elements[i].style.display="inline";  
            work.elements[i].value=work.elements[i].nextSibling.innerHTML;  
            work.elements[i].nextSibling.style.display="none";  
            }  
        but.value='save';  
        }else{  
            for(var i=0;i<work.elements.length;i++){  
            work.elements[i].style.display="none";  
            work.elements[i].nextSibling.innerHTML=work.elements[i].value;  
            work.elements[i].nextSibling.style.display="inline";  
            }  
            but.value='edit';  
         	work.submit();  
            }  
    }
 
function edit3(but){  
    var education=document.getElementsByName("education")[0];  
      
    if(but.value=='edit'){  
        for(var i=0;i<education.elements.length;i++){  
            education.elements[i].style.display="inline";  
            education.elements[i].value=education.elements[i].nextSibling.innerHTML;  
            education.elements[i].nextSibling.style.display="none";  
            }  
        but.value='save';  
        }else{  
            for(var i=0;i<education.elements.length;i++){  
            education.elements[i].style.display="none";  
            education.elements[i].nextSibling.innerHTML=education.elements[i].value;  
            education.elements[i].nextSibling.style.display="inline";  
            }  
            but.value='edit';  
         	education.submit();  
            }  
    }
  
function edit4(but){  
    var email=document.getElementsByName("email")[0];  
      
    if(but.value=='edit'){  
        for(var i=0;i<email.elements.length;i++){  
            email.elements[i].style.display="inline";  
            email.elements[i].value=email.elements[i].nextSibling.innerHTML;  
            email.elements[i].nextSibling.style.display="none";  
            }  
        but.value='save';  
        }else{  
            for(var i=0;i<email.elements.length;i++){  
            email.elements[i].style.display="none";  
            email.elements[i].nextSibling.innerHTML=email.elements[i].value;  
            email.elements[i].nextSibling.style.display="inline";  
            }  
            but.value='edit';  
      	    email.submit();  
            }  
    }

function reset(){
	var basic=document.getElementsByName("basic")[0];  
    
    
        for(var i=0;i<basic.elements.length;i++){  
            basic.elements[i].style.display="none";  
            basic.elements[i].value=basic.elements[i].nextSibling.innerHTML;  
            basic.elements[i].nextSibling.style.display="none";  
            }
                
       
}

function reset1(){
	var contact=document.getElementsByName("contact")[0];  
    
    
        for(var i=0;i<contact.elements.length;i++){  
            contact.elements[i].style.display="none";  
            contact.elements[i].value=contact.elements[i].nextSibling.innerHTML;  
            contact.elements[i].nextSibling.style.display="none";  
            }
}

function reset2(){
	var work=document.getElementsByName("work")[0];  
    
    
        for(var i=0;i<work.elements.length;i++){  
            work.elements[i].style.display="none";  
            work.elements[i].value=work.elements[i].nextSibling.innerHTML;  
            work.elements[i].nextSibling.style.display="none";  
            }
}

function reset3(){
	var education=document.getElementsByName("education")[0];  
    
    
        for(var i=0;i<education.elements.length;i++){  
            education.elements[i].style.display="none";  
            education.elements[i].value=education.elements[i].nextSibling.innerHTML;  
            education.elements[i].nextSibling.style.display="none";  
            }
}

function reset4(){
	var email=document.getElementsByName("email")[0];  
    
    
        for(var i=0;i<email.elements.length;i++){  
            email.elements[i].style.display="none";  
            email.elements[i].value=email.elements[i].nextSibling.innerHTML;  
            email.elements[i].nextSibling.style.display="none";  
            }
}

function hide(targetid){

 
        target=document.getElementById(targetid);

            if (target.style.display=="block"){

                target.style.display="none";

            } else {

                target.style.display="block";

            }

    }
    
</script>



</head>
<body>
	<%	
	User user = (User) request.getAttribute("user");
	String username = user.getUsername();
	String firstName = user.getFirstName();
	String lastName = user.getLastName();
	String actionDelete= "deletePhone";
	
	ProfileDao profileDao = new ProfileDao();
	List<Profile> profiles = profileDao.findProfileByUser(user);
	Profile profile = profiles.get(0);
	int profileId = profile.getId();
	
	String emailAddr;
	Type emailType;
	int emailId;
	EmailDao emailDao = new EmailDao();
	List<Email> emails = emailDao.findEmailByProfile(profile);
	if (!emails.isEmpty()){
		Email email = emails.get(0);
		emailAddr = email.getEmailAddress();
		emailType = email.getType();
		emailId = email.getId();
	}
	else{
		emailAddr = "";
		emailType = Type.Business;
		emailId = 0;
	}
	
	String phoneNum;
	Type phoneType;
	int phoneId;
	PhoneDao phoneDao = new PhoneDao();
	List<Phone> phones = phoneDao.findPhoneByProfile(profile);
	if (!phones.isEmpty()){
		Phone phone = phones.get(0);
		phoneId = phone.getId();
		phoneNum = phone.getPhoneNum();
		phoneType = phone.getType();
	}
	else{
		phoneId =0;
		phoneNum = "";
		phoneType = Type.Business;
	}
	
	int workId;
	String companyName;
	Occupation occupation;
	String companyAddress;
	WorkDao workDao = new WorkDao();
	List<Work> works = workDao.findWorkByProfile(profile);
	if (!works.isEmpty()){
		Work work = works.get(0);
		workId = work.getId();
		companyName = work.getCompanyName();
		occupation = work.getOccupation();
		companyAddress = work.getCompanyAddress();
	}
	else {
		workId =0;
		companyName = "";
		occupation = Occupation.Teacher; 
		companyAddress = "";
	}
	
	int educationId;
	String Institution;
	String enrollmentDate;
	String graduationDate;
	String major;
	String degree;
	EducationDao educationDao = new EducationDao();
	List<Education> educations = educationDao.findEducationByProfile(profile);
	if (!educations.isEmpty()){
		Education education = educations.get(0);
		Institution = education.getInstitution();
		enrollmentDate = education.getEnrollmentDate();
		graduationDate = education.getGraduationDate();
		major = education.getMajor();
		degree = education.getDegree();
		educationId = education.getId();
	}
	else{
		Institution = "";
		enrollmentDate = "";
		graduationDate = "";
		major = "";
		degree = "";
		educationId = 0;
	}
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
				
				<li><a href = "#" id = "mySearchLink" type = "submit"><font color="white"><%=firstName%> <%=lastName%>'s Home</font></a></li>
				<li><a href = "#"><font color="white">Blogs</font></a></li>
				<li><a href = "#"><font color="white">Profile</font></a></li>
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
			<form id = "mySearchForm" action="/Project/loginAction2" method="post">	
			<input name="username" value="<%=username%>" type = "hidden"></input>
			</form>
			<form id = "myFriendsForm" action="/Project/friendAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
		</div>
	</div>
	
<iframe name="tempframe" style="display:none"></iframe> 
<div class="box">
	  
	  <div class="photo"><img src="pic/da5b7e1fc9873f07090ec1ebd364cc97.jpg" alt="" width="214" height="197"></div>
	  <div class="modal-dialog"><%=firstName%> <%=lastName%></div>
	    
	  <div class="basicInfo" id="basic" style="display: block">
			<span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">Basic Info</label></span>
		     	  <span style="width: 100%; float: left; display: block; border: 10px; margin-top: 10px; margin-bottom: 10px; margin-right: 20px">
		     	  <input  type="button" value="edit" onclick="edit(this)" /><input  type="button" value="hide" onclick=hide("basic") /><input  type="button" value="reset" onclick=reset() /></span>
			<br />
			<div class="InfoList">
		  
		  		  <form name="basic" action="/Project/profileAction1" method="post" style="display: block">  
				
					         
				    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">NickName</label>
				         	<input name="nickname" style="display:none" /><span><%=profile.getNickName() %></span></span><br />
				         	<input name="username" type = "hidden"/><span style="display:none"><%=username %></span>
				    		<input name="profileId" type = "hidden"/><span style="display:none"><%=profileId %></span>
				    		<input name="updateBasic" type = "hidden"/><span style="display:none">updateBasic</span>
				    <span>
						    <label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Gender</label>          <select  name="gender" style="display:none">  
						    <option value="Male" selected="selected">Male</option>  
						    <option value="Female">Female</option>  
						    <option value="Secret">Secret</option>
						    </select><span><%=profile.getGender() %></span></span><br />  
				    <span><label for="nickname" style="font-family: 'Comic Sans MS', cursive">DOB</label>          
				    		<input name="dob" style="display:none" /><span><%=profile.getDateOfBirth() %></span></span><br />  
				    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Current Location</label>          
				    		<input name="currentlocation" type="text" style="display:none" /><span><%=profile.getCurrentLocation() %></span></span><br />
				    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Hometown</label>          
				    		<input name="hometown" type="text" style="display:none" /><span><%=profile.getHometown() %></span></span><br />
				    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Language</label>          
				    		<input name="language" type="text" style="display:none" /><span><%=profile.getLanguage() %></span></span><br />
				    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Address</label>          
						    <input name="address" type="text" style="display:none" /><span><%=profile.getAddress() %></span></span><br />
				    		
				  </form>  
			</div> 
	</div>           
   

		<div class="basicInfo" id="contact" style="display: block">
					<span><span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">Phone</label></span>
				     	  <span style="width: 100%; float: left; display: block; border: 10px; margin-top: 10px; margin-bottom: 10px; margin-right: 20px">
				     	  <input  type="button" value="edit" onclick="edit1(this)"/>
				     	  <input  type="button" value="hide" onclick=hide("contact") />
				     	  <input id= "myPhoneLink" type= "button" value="reset" onclick=reset1() /></span></span>
					<br />
					<div class="InfoList">
				  
				  		  <form name="contact" action="/Project/profileAction1" method="post" style="display: block"> 
         
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Phone</label>
						         	<input name="phone" style="display:none" /><span><%=phoneNum %></span>
						         	<input name="username" type = "hidden"/><span style="display:none"><%=username %></span>
						         	<input name="phoneId" type = "hidden"/><span style="display:none"><%=phoneId%></span>
								    <input name="updateContact" type = "hidden"/><span style="display:none">updateContact</span>
								    <select  name="phonetype" style="display:none">  
								    <option value="Personal" selected="selected">Personal</option>  
								    <option value="Business">Business</option>  
								    </select><span><%=phoneType %></span></span><br />
						  </form>  
						  <form id = "myPhoneForm" action="/Project/profileAction1" method="post" style="display: block"> 
 								    <input name="actionDelete123" value="<%=actionDelete%>" type = "hidden"></input>
								    <input name="actionDelete" value="<%=actionDelete%>" type = "hidden"></input>
								    <input name="username" value="<%=username%>" type = "hidden"></input>
								    <input name="phoneId" value="<%=phoneId%>" type = "hidden"></input>
						  </form>
					</div> 
			</div>
			
		<div class="basicInfo" id="email" style="display: block">
					<span><span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">Email</label></span>
				     	  <span style="width: 100%; float: left; display: block; border: 10px; margin-top: 10px; margin-bottom: 10px; margin-right: 20px">
				     	  <input  type="button" value="edit" onclick="edit4(this)" />
				     	  <input  type="button" value="hide" onclick=hide("email") />
				     	  <input  id= "myEmailLink" type="button" value="reset" onclick=reset4() /></span></span>
					<br />
					<div class="InfoList">
				  
				  		  <form name="email" method="post" style="display: block">  
						    <span><label for="nickname" style="font-family: 'Comic Sans MS', cursive">Email</label>          
						    		<input name="email" style="display:none" /><span><%=emailAddr %></span>
						    		<input name="username" type = "hidden"/><span style="display:none"><%=username %></span>
						         	<input name="emailId" type = "hidden"/><span style="display:none"><%=emailId%></span>
								    <input name="updateEmail" type = "hidden"/><span style="display:none">updateEmail</span>
									<select  name="emailtype" style="display:none">  
								    <option value="Personal" selected="selected">Personal</option>  
								    <option value="Business">Business</option>  
								    </select><span><%=emailType %></span></span><br />  
						    
						  </form> 
						  <form id = "myEmailForm" action="/Project/profileAction1" method="post" style="display: block">  
						    		<input name="actionDelete123" value="<%=actionDelete%>" type = "hidden"></input>
								    <input name="emailDelete" value="emailDelete" type = "hidden"></input>
								    <input name="username" value="<%=username%>" type = "hidden"></input>
								    <input name="emailId" value="<%=emailId%>" type = "hidden"></input>
						    
						  </form>  
					</div> 
			</div>
			
		<div class="basicInfo" id="work" style="display: block">
					<span><span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">Work Info</label></span>
				     	  <span style="width: 100%; float: left; display: block; border: 10px; margin-top: 10px; margin-bottom: 10px; margin-right: 20px">
				     	  <input  type="button" value="edit" onclick="edit2(this)" />
				     	  <input  type="button" value="hide" onclick=hide("work") />
				     	  <input  id= "myWorkLink" type="button" value="reset" onclick=reset2() /></span></span>
					<br />
					<div class="InfoList">
				  
				  		  <form name="work" method="post" style="display: block">  
						
							         
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Company</label>
						         	<input name="company" type="text" style="display:none" /><span><%=companyName %></span></span><br />
						         	<input name="username" type = "hidden"/><span style="display:none"><%=username %></span>
						         	<input name="workId" type = "hidden"/><span style="display:none"><%=workId%></span>
								    <input name="updateWork" type = "hidden"/><span style="display:none">updateWork</span>
								    
						    <span><label for="nickname" style="font-family: 'Comic Sans MS', cursive">Occupation</label>          
						    		<select  name="occupation" style="display:none">  
								    <option value="Teacher" selected="selected">Teacher</option>  
								    <option value="Student">Student</option>  
								    <option value="Doctor">Doctor</option>
								    <option value="SuperHero">SuperHero</option>
								    <option value="Thief">Thief</option>
								    <option value="Bad Guy">Bad Guy</option>
								    </select><span><%=occupation %></span></span><br />  
						    <!-- span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Current Location</label>          
						    		<input name="currentlocation" type="text" style="display:none" /><span>current location</span></span><br /-->
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Company Address</label>          
						    		<input name="WorkAddress" type="text" style="display:none" /><span><%=companyAddress %></span></span><br />
						  </form>  
						  
						  <form id = "myWorkForm" action="/Project/profileAction1" method="post" style="display: block">  
						  			<input name="actionDelete123" value="<%=actionDelete%>" type = "hidden"></input>
								    <input name="workDelete" value="workDelete" type = "hidden"></input>
								    <input name="username" value="<%=username%>" type = "hidden"></input>
								    <input name="workId" value="<%=workId%>" type = "hidden"></input>
						  </form>
						  
					</div> 
			</div>
			
			
        <div class="basicInfo" id="education" style="display: block">
					<span><span style="width: 100%; float: left; display: block; font-family: Verdana, Geneva, sans-serif;"> <label for="basicInfo" class="BI">Education Info</label></span>
				     	  <span style="width: 100%; float: left; display: block; border: 10px; margin-top: 10px; margin-bottom: 10px; margin-right: 20px">
				     	  <input  type="button" value="edit" onclick="edit3(this)" />
				     	  <input  type="button" value="hide" onclick=hide("education") />
				     	  <input  id= "myEducationLink" type="button" value="reset" onclick=reset3() /></span></span>
					<br />
					<div class="InfoList">
				  
				  		  <form name="education" method="post" style="display: block">  
						
							         
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Institution</label>
						         	<input name="institution" type="text" style="display:none" /><span><%=Institution %></span></span><br />
								    <input name="username" type = "hidden"/><span style="display:none"><%=username %></span>
						         	<input name="educationId" type = "hidden"/><span style="display:none"><%=educationId%></span>
								    <input name="updateEducation" type = "hidden"/><span style="display:none">updateEducation</span>
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Enrollment Date</label>          
						    		<input name="enrollment" type="text" style="display:none" /><span><%=enrollmentDate %></span></span><br />
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Graduation Date</label>          
						    		<input name="graduation" type="text" style="display:none" /><span><%=graduationDate %></span></span><br />
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Major</label>          
						    		<input name="major" type="text" style="display:none" /><span><%=major %></span></span><br />
						    <span><label for="nickname"  style="font-family: 'Comic Sans MS', cursive">Degree</label>          
						    		<input name="degree" type="text" style="display:none" /><span><%=degree %></span></span><br />

						  </form> 
						  
						  <form id = "myEducationForm" action="/Project/profileAction1" method="post" style="display: block">  
						 			<input name="actionDelete123" value="<%=actionDelete%>" type = "hidden"></input>
								    <input name="educationDelete" value="educationDelete" type = "hidden"></input>
								    <input name="username" value="<%=username%>" type = "hidden"></input>
								    <input name="educationId" value="<%=educationId%>" type = "hidden"></input>
						  </form> 
						   
					</div> 
			</div>		
		
		<form name="deleteThem" id = "myProfileForm" action="/Project/profileAction1" method="post">	
		<input name="username" value="<%=username%>" type = "hidden"></input>
		<input name="profileId" value="<%=profile.getId()%>" type = "hidden"></input>
		<div style="margin:5px; position:relative; left:25%"><button name="action" value= "deleteAll" type = "submit" onClick="history.go(0)" >Reset</button></div>	
		</form>	
		
			
		
</div>


  
    <!--div class = "navbar navbar-static-bottom">
	
	
		<div class= "container">
		  <p class = "navbar-text pull-left">Site Built By Lin Zhu</p>
			<a href = "http://na.leagueoflegends.com/" class = "navbar-btn btn-sm btn-primary btn pull-right">League of Legends</a>	
		</div>
	
	</div-->
    
    
	
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
		$('#myLink').click(function() {
		    $('#myForm').submit();
		});
	
	
		$('#mySearchLink').click(function() {
	    	$('#mySearchForm').submit();
		});
		
		$('#myFriendLink').click(function() {
			$('#myFriendsForm').submit();
		});
		
		$('#myPhoneLink').click(function() {
	    	$('#myPhoneForm').submit();
		});
		
		$('#myEmailLink').click(function() {
	    	$('#myEmailForm').submit();
		});
		
		$('#myWorkLink').click(function() {
	    	$('#myWorkForm').submit();
		});
		
		$('#myEducationLink').click(function() {
	    	$('#myEducationForm').submit();
		});
	});
	</script>

</body>
</html>