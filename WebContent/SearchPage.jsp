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



.navbar-default { background-color: #}
.navbar-default .navbar-nav>.active>a:hover,.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus { background-color: #222222}
.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.open>a,.navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:hover,.navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:hover, .navbar-default .navbar-nav>.open>a:focus { background-color: #}
.dropdown-menu { background-color: #}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-color: #428BCA}
.navbar-default { background-image: none; }
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { background-image: none; }
.navbar-default { border-color: #}
.navbar-default .navbar-brand { color: #}
.navbar-default .navbar-brand:hover { color: #FFFFFF}
.navbar-default .navbar-nav>li>a { color: #}
.navbar-default .navbar-nav>li>a:hover, .navbar-default .navbar-nav>li>a:focus { color: #FFFFFF}
.navbar-default .navbar-nav>.active>a,.navbar-default .navbar-nav>.open>a, .navbar-default .navbar-nav>.open>a:hover, .navbar-default .navbar-nav>.open>a:focus { color: #FFFFFF}
.navbar-default .navbar-nav>.active>a:hover, .navbar-default .navbar-nav>.active>a:focus { color: #FFFFFF}
.dropdown-menu>li>a { color: #333333}
.dropdown-menu>li>a:hover, .dropdown-menu>li>a:focus { color: #FFFFFF}
.navbar-default .navbar-nav>.dropdown>a .caret { border-top-color: #999999}
.navbar-default .navbar-nav>.dropdown>a:hover .caret { border-top-color: #FFFFFF}
.navbar-default .navbar-nav>.dropdown>a .caret { border-bottom-color: #999999}
.navbar-default .navbar-nav>.dropdown>a:hover .caret { border-bottom-color: #FFFFFF}


body {
    background-color: #E5E4ED;
    margin-bottom : 50px;
} 

.get-down {
	position: relative;
	top: 0px;
}

.get-btn-down {
	position: relative;
	top: 24px;
}

.get-nav-down {
	position: relative;
	top: 40px;

}

.get-result-down {
	position: relative;
	top: 19px;
}

.get-nav-left {
	position: relative;
	left: -15px;
}

.position3 {
	position: relative;
    bottom: -250px; 
}

.lol-background{
	background-image: url(pic/League_of_Legends_World_Championship_2013_Logo.jpg); 
	height: 131px; 
	width: 1015px; 
	border: 1px solid black;
}

.lol-change-background{
	background-image: url(pic/League_of_Legends_World_Championship_2013_Logo.jpg); 
	height: 131px; 
	width: 1002px; 
	border: 1px solid black;
}

.name-font {
	font-family: 'Gill Sans MT';
	font-size: 40px;
	font-style: normal;
	font-variant: normal;
	font-weight: 400;
	line-height: 33px;
}

</style>

</head>
<body>

	<%	
	User user = (User) request.getAttribute("user");
	String username = user.getUsername();
	String firstName = user.getFirstName();
	String lastName = user.getLastName();
	%>
	

	<div class = "navbar navbar-inverse navbar-static-top">
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
				<li><a href = "#" id= "myProfileLink" type = "submit"><font color="white">Profile</font></a></li>
				<li><a href = "#" id= "myFriendLink"><font color="white">Friends</font></a></li>
				<li><a href = "/Project/jwsTest.jsp"><font color="white">Privilege</font></a></li>
				<li><a href = "#"><font color="white">Search</font></a></li>
				<li><a href = "#contact" data-toggle="modal"><font color="white">Contact Us</font></a></li>
				<li><a href = "/Project/LOLLogin.html"><font color="white">Logoff</font></a></li>
				
				</ul>
			</div>
			<form id = "mySearchForm" action="/Project/loginAction2" method="post">	
			<input name="username" value="<%=username%>" type = "hidden"></input>
			</form>	
			<form id = "myProfileForm" action="/Project/profileAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
			
			<form id = "myFriendsForm" action="/Project/friendAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
			</form>
		</div>
	</div>
	
	<div class="row">
	
  		<div class="form-group col-sm-1">

  		</div>
  		<form id = "mywholeSearch" action="/Project/searchAction1" method="post">
  		<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>

  		
  		<div class="get-down form-group col-sm-9">
  			<label class = "control-label">Input Your Summoner Name: </label>
  			<input name = SummonerName type = "text" class = "form-control" placeholder = "Summoner Name..">
  			
  			<% 
  			SummonerDao summonerDao = new SummonerDao();
  			String SummonerName = request.getParameter("SummonerName");
  			int i = 9;
  			if(SummonerName != null) {
  				SummonerName = SummonerName.toLowerCase();
  				SummonerWebserviceClient client = new SummonerWebserviceClient();
  				Summoner summoner = client.getSummonerForName(SummonerName);
 			 	if(summoner != null) {
  			%>
  			<div id= "jumpUp"> 
  			<div class="get-nav-down navbar navbar-default bs-docs-nav" role="banner">
      			<div class="get-nav-left container">
       				<div id="ChampionShip" class = "lol-background" >
       				<img src="http://avatar.leagueoflegends.com/na/<%=SummonerName%>.png" alt="Mountain View" style="width:70px;height:70px;">
          			<font color="white"><label class = "name-font"> <%=summoner.getName()%> </label></font>
          			<p></p>
          			<ul class="nav navbar-nav">
            			<li><a id = "ShowProfile" href="#"><font color="white">Profile</font></a></li>
            			<li><a id = "Match" href="#"><font color="white">Match</font></a></li>
            			<li><a id = "ShowRank" href="#"><font color="white">Rank</font></a></li>
          			</ul>
        			</div>
      			</div>
   			</div>
  			
  			
  			<div id = "navbar123" class="get-result-down able-responsive">
            <table class="table table-striped">
              <tbody>
                <tr>
                  <td><b>SummonerId:	</b></td>
                  <td><%=summoner.getId()%></td>
                </tr>
              </tbody>
              
              <tbody>
                <tr>
                  <td><b>ProfileIconId:	</b></td>
                  <td><%=summoner.getProfileIconId()%></td>
                </tr>
              </tbody>
              
              <tbody>
                <tr>
                  <td><b>SummonerLevel:	</b></td>
                  <td><%=summoner.getSummonerLevel()%></td>
                </tr>
              </tbody>
              <tbody>
                <tr>
                  <td><b>SummonerName:	</b></td>
                  <td><%=summoner.getName()%></td>
                </tr>
              </tbody>
            </table>
          	</div>
			
          	<div style="display: none;" id = "linzhu" class="get-result-down able-responsive">
            <table class="sortable table table-striped">
              <thead>
                <tr>
                  <th>Champion</th>
                  <th></th>
                  <th>Summoner Spell</th>
                  <th>items</th>
                  <th>Kills</th>
                  <th>Deaths</th>
                  <th>Asists</th>
                  <th>Gold Earned</th>
                  <th>Creeps</th>
                </tr>
              </thead>
              
              <tbody>
              	<%	
              	MatchStat matches = new MatchStat();
              	RankStat SerivceClient = new RankStat();
              	String idStr = SerivceClient.idSolution(SummonerName);
              	if (idStr!=null) {
              	List<Match> allM =  matches.recentMatch(idStr);
				%>
              	<% 
              	while (i >= 0) { 
					Match match = new Match();      
					match = allM.get(i);
              	%>
                <tr>
                  <td><a href = "#" id = "myMatchLink" type = "submit"><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/splash/<%=match.getChampionUsed()%>_0.jpg" alt="Mountain View" style="width:120px;height:70px;"></a></td>
                  <td><%=match.getChampionUsed()%></td>
                  <td><img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=match.getSpells().get(1)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  	  <img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=match.getSpells().get(0)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  </td>
                  <td>
                  	  <%List<String> Items = match.getItems();
                  	  	for (String item : Items) {
                  	  %>
                  	  <img src="http://ddragon.leagueoflegends.com/cdn/4.19.3/img/item/<%=item%>.png" alt="Mountain View" style="width:30px;height:30px;">
                  	  <%} %>
                 
                  </td>
                  <td><%=match.getKills()%></td>
                  <td><%=match.getDeaths()%></td>
                  <td><%=match.getAsists()%></td>
                  <td><%=match.getTotalGold()%></td>
                  <td><%=match.getCreeps()%></td>
                </tr>
                <%
                i--;
              	}
              	}
              	%>
              </tbody>
              
            </table>
          	</div>
      
          	<div style="display: none;" id = "rank" class="get-result-down able-responsive">
          	
          	<table class="table table-striped">
              <thead>
                <tr>
                  <th>Summoner Icon</th>
                  <th>Summoner Name</th>
                  <th>Total Wins</th>
                  <th>Total Losses</th>
                  <th>Total Win%</th>
                </tr>
              </thead>
              <tbody>
              	<tr>
                  <td><img src="http://avatar.leagueoflegends.com/na/<%=SummonerName%>.png" alt="Mountain View" style="width:70px;height:70px;"></td>
                  <td><%=summoner.getName()%></td>
                  <td><%=RankStat.summa.getWinningMatch()%></td>
                  <td><%=RankStat.summa.getLosingMatch()%></td>
                  <td><%=RankStat.summa.getWinningRate()%></td>
                </tr>
              </tbody>
          	</table>
          	
            <table class="sortable table table-striped">
              <thead>
                <tr>
                  <th>Champion</th>
                  <th></th>
                  <th>Wins</th>
                  <th>Losses</th>
                  <th>Win%</th>
                  <th>KDA</th>
                  <th>Kills</th>
                  <th>Deaths</th>
                  <th>Asists</th>
                  <th>Creeps</th>
                </tr>
              </thead>
              <tbody>
              	<%	
				List<Champion> champions = SerivceClient.getChampionWin(idStr);
				%>
              	<%for(Champion cham:champions) { %>
              	
                <tr>
                  <td><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/splash/<%=cham.getName()%>_0.jpg" alt="Mountain View" style="width:120px;height:70px;"></td>
                  <td><%=cham.getName()%></td>
                  <td><%=cham.getWinningMatch()%></td>
                  <td><%=cham.getLosingMatch()%></td>
                  <td><%=cham.getWinningRate()%></td>
                  <td><%=cham.getKDA()%>/game</td>
                  <td><%=cham.getEverageK()%>/game</td>
                  <td><%=cham.getEverageD()%>/game</td>
                  <td><%=cham.getEverageA()%>/game</td>
                  <td><%=cham.getEverageCS()%>/game</td>
                </tr>
                
                <%}
              	%>
              </tbody>
            </table>
          	</div>
          	
			</div>
			<% 
 			 	}
  			}
  			%>
 		</div>
		
  		<div class="get-down form-group col-sm-2">
  			<button id = "Show" class = "get-btn-down btn btn-md btn-default" type = "submit" >Search</button>
  		</div>
  		</form>
	</div>

	<div class = "navbar navbar-default navbar-fixed-bottom">
	
		<div class= "container">
			<p class = "navbar-text pull-left">Site Built By Lin Zhu</p>
			<a href = "http://na.leagueoflegends.com/" class = "navbar-btn btn-sm btn-primary btn pull-right">League of Legends</a>	
		</div>
	
	</div>
	
	<div class = "modal fade" id = "contact" role = "dialog">
		<div class = "modal-dialog">
			<div class = "modal-content">
			<form class = "form-horizontal" action="/Project/searchAction1" method="post">
			<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
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
	
	<form id = "myMatchForm" action="/Project/searchMatchAction1" method="post">
		<input name="username" class="form-control" value="<%=username%>" type = "hidden"></input>
	</form>
	
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="http://www.kryogenix.org/code/browser/sorttable/sorttable.js" type="text/javascript"></script>
	<script type="text/javascript">
	
	$(document).one("ready",function(){
		var count123;
		var comment;
		$("#Match").click(function() {	
			$("#rank").hide();
			$("#navbar123").hide();
			$("#ChampionShip").removeClass("lol-background").addClass("lol-change-background");
			$("#linzhu").show();
		}); 
		
		$("#ShowRank").click(function() {	
			$("#linzhu").hide();
			$("#navbar123").hide();
			$("#ChampionShip").removeClass("lol-background").addClass("lol-change-background");
			$("#rank").show();
		});
		
		$("#ShowProfile").click(function() {	
			$("#linzhu").hide();
			$("#rank").hide();
			$("#ChampionShip").removeClass("lol-change-background").addClass("lol-background");
			$("#navbar123").show();
		});
		
		$('#mySearchLink').click(function() {
			$('#mySearchForm').submit();
		});
		
		$('#myMatchLink').click(function() {
		    $('#myMatchForm').submit();
		});
		$('#myProfileLink').click(function() {
			$('#myProfileForm').submit();
		});
		$('#myFriendLink').click(function() {
			$('#myFriendsForm').submit();
		});

		
	});
	</script>
</body>
</html>