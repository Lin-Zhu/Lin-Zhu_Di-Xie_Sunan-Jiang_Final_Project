<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="neu.edu.cs5200.project.* ,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Match</title>

<link href = "css/bootstrap.min.css" rel ="stylesheet">
<link href = "css/bootstrap-theme.min.css" rel ="stylesheet">
</head>
<body>
<h1> Match Detail: </h1>
		<%
		MatchStat matches = new MatchStat();
      	RankStat client = new RankStat();
      	String idStr = client.idSolution("yourdadddd");
      	if (idStr!=null) {
      	List<Match> allM =  matches.recentMatch(idStr);
      	matchInfo a = new matchInfo();
  		a = matches.getAnE("9"); 
  		%>
		<h2><%= a.getRed() %> Team:</h2>
		<div class="get-down table-responsive">
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
                </tr>
              </thead>
              <tbody>
              
              	<% int i = 0;
              	while (i < 5) { 
              		
              	%>
                <tr>
                  <td><a href = "#"><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/splash/<%=a.getAlliesChamp().get(i)%>_0.jpg" alt="Mountain View" style="width:120px;height:70px;"></a></td>
                  <td><%=a.getAlliesChamp().get(i)%></td>
                  <td><img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=a.getPlayer().get(i).getSpells().get(1)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  	  <img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=a.getPlayer().get(i).getSpells().get(0)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  </td>
                  <td>
                  	  <%List<String> Items = a.getPlayer().get(i).getItems();
                  	  	for (String item : Items) {
                  	  %>
                  	  <img src="http://ddragon.leagueoflegends.com/cdn/4.19.3/img/item/<%=item%>.png" alt="Mountain View" style="width:30px;height:30px;">
                  	  <%} %>
                 
                  </td>
                  <td><%=a.getPlayer().get(i).getKills() %></td>
                  <td><%=a.getPlayer().get(i).getDeaths()%></td>
                  <td><%=a.getPlayer().get(i).getAsists()%></td>
                </tr>
                <%
                i++;
              	}
              	
              	%>
              </tbody>
            </table>
		</div>
          
        <h2><%= a.getPurple() %> Team:</h2>  
        <div class="get-down table-responsive">
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
                </tr>
              </thead>
              <tbody>
				<% int j = 0;
              	while (j < 5) { 
              	%>
                <tr>
                  <td><a href = "#"><img src="http://ddragon.leagueoflegends.com/cdn/img/champion/splash/<%=a.getEnemiesChamp().get(j)%>_0.jpg" alt="Mountain View" style="width:120px;height:70px;"></a></td>
                  <td><%=a.getEnemiesChamp().get(j)%></td>
                  <td><img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=a.getPlayer().get(j+5).getSpells().get(1)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  	  <img src="http://loldb.gameguyz.com/images/sqlite_images/summoner_spell/<%=a.getPlayer().get(j+5).getSpells().get(0)%>.png" alt="Mountain View" style="width:50px;height:50px;">
                  </td>
                  <td>
                  	  <%List<String> Items = a.getPlayer().get(j+5).getItems();
                  	  	for (String item : Items) {
                  	  %>
                  	  <img src="http://ddragon.leagueoflegends.com/cdn/4.19.3/img/item/<%=item%>.png" alt="Mountain View" style="width:30px;height:30px;">
                  	  <%} %>
                 
                  </td>
                  <td><%=a.getPlayer().get(j+5).getKills() %></td>
                  <td><%=a.getPlayer().get(j+5).getDeaths()%></td>
                  <td><%=a.getPlayer().get(j+5).getAsists()%></td>
                </tr>
                <%
                j++;
              	}
              	}
              	%>
              </tbody>
            </table>
		</div>  
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="http://www.kryogenix.org/code/browser/sorttable/sorttable.js" type="text/javascript"></script>

</body>
</html>