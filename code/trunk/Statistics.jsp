<%@page import="PrototypeServer.DatabaseManager"%>
<%@page import="PrototypeServer.DraftGameAI"%>
<%@page import="java.util.*" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href='http:/fonts.googleapis.com/css?family=Dosis:400,700' rel='stylesheet' type='text/css'>
<style type="text/css">
   body { background:  #808080;
		  font-family: 'Dosis', sans-serif;
		  color: #5CE62E;
		}
</style>
<title>DOTADROID</title>
<link rel="icon" type="image/png" href="imgs/DotaDroid.png" />
</head>
<!-- LARGE AMMOUNT OF THE STYLING FROM BOOTSTRAP AND RELATED SITES HTTP://GETBOOTSTRAP.COM/ -->
<body>
<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container">
        <div class="navbar-header">
		<a href="index.jsp" ><img src="http://dotadroid.com/imgs/DotaDroid.png" height="50" width="50"></a>
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.jsp">DOTADroid</a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.jsp">Drafting Assistant</a></li>
            <li class="active"><a href="Statistics.jsp">Hero Statistics</a></li>
            <p class="navbar-text">Drafting Game:</p>
            <li class="active"><a href="Easy.jsp">Easy</a></li>
            <li class="active"><a href="Medium.jsp">Medium</a></li>
           	<li class="active"><a href="Hard.jsp">Hard</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
<% List<String> demheroes = DatabaseManager.getAllHeroes();
	String hero = request.getParameter("Hero");%> 
	
<div class="col-lg-4"; left: 5px;>  
<form action = <%="Statistics.jsp"%> method = "POST">
</br></br>
<h3>Select a hero!</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="Hero">
<option value ="0">Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(hero != null){if(Integer.parseInt(hero) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
</form>

<%if(hero != null){%>
		<%
		double[][] bestteammate = DatabaseManager.bestteammate(Integer.parseInt(hero));
		double wr1 = bestteammate[0][0]; 
		int h1 = (int) (bestteammate[0][1]);
		double[][] worstteammate = DatabaseManager.worstteammate(Integer.parseInt(hero));
		double wr2 = worstteammate[0][0]; 
		int h2 = (int) (worstteammate[0][1]);
		double[][] bestagainst = DatabaseManager.bestagainst(Integer.parseInt(hero));
		double wr3 = bestagainst[0][0]; 
		int h3 = (int) (bestagainst[0][1]);
		double[][] worstagainst = DatabaseManager.worstagainst(Integer.parseInt(hero));
		double wr4 = worstagainst[0][0]; 
		int h4 = (int) (worstagainst[0][1]);
		double[][] nemesis = DatabaseManager.nemesis(Integer.parseInt(hero));
		int wr5 = (int) nemesis[0][0]; 
		int h5 = (int) (nemesis[0][1]); 
		double sd = DatabaseManager.getstandarddev(Integer.parseInt(hero));%>
		
		<h1><%if(hero != null){
		out.print(DatabaseManager.getheroname(Integer.parseInt(hero)));
	  
	 
	  %></h1>
	  <img src="/PrototypeServer/HERO_AVATARS/<%out.print(hero);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="136" width="240"/><%}; %>
	  
	  </br></br>
	<div class="row" margin: 5px>
      <table class="table">
        <tbody>
          <tr>
            <td>Average Win Rate</td>
            <td><%out.print(DatabaseManager.getaverage(Integer.parseInt(hero)));%>%</td>
            <td></td>
          </tr>
           <tr>
            <td>Win Rate Standard Deviation</td>
            <td><%out.print(sd);%>%</td>
            <td></td>
          </tr>
          <tr>
            <td>Best Team Mate</td>       
            <td><%if(wr1 != 0 && h1 != 0){}else{};%><% out.print(wr1);%>%</td>
          	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(h1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          </tr>
          <tr>
            <td>Worst Team Mate</td>
            <td> <%if(wr2 != 0 && h2 != 0){}else{};%><% out.print(wr2);%>%</td>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(h2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          </tr>
          <tr>
            <td>Best Against</td>
            <td> <%if(wr3 != 0 && h2 != 0){}else{};%><% out.print(wr3);%>%</td>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(h3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          </tr>
          <tr>
            <td>Worst Against</td>
            <td> <%if(wr4 != 0 && h2 != 0){}else{};%><% out.print(wr4);%>%</td>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(h4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          </tr>
          <tr>
            <td>Most Played</td>
            <td> <%if(wr5 != 0 && h2 != 0){}else{};%><% out.print(wr5);%></td>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(h5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          </tr>
        </tbody>
      </table>
    </div>
<%-- 		%><h3>Average win rate: <%out.print(DatabaseManager.getaverage(Integer.parseInt(hero)));%>%</h3>  --%>
		
		
<%-- 	 	  <h3>Best team mate: <%out.print(DatabaseManager.getheroname(h1));%> <%if(wr1 != 0 && h1 != 0){%>with a win rate of <%}else{};%><% out.print(wr1);%>%</h3> --%>
	 	
<%-- 	 	  <h3>Worst team mate: <%out.print(DatabaseManager.getheroname(h2));%> <%if(wr2 != 0 && h2 != 0){%>with a win rate of <%}else{};%><% out.print(wr2);%>%</h3> --%>
	 	 
<%-- 	 	  <h3>Best against: <%out.print(DatabaseManager.getheroname(h3));%> <%if(wr3 != 0 && h3 != 0){%>with a win rate of <%}else{};%><% out.print(wr3);%>%</h3> --%>
	 	
<%-- 	 	  <h3>Worst against: <%out.print(DatabaseManager.getheroname(h4));%> <%if(wr4 != 0 && h4 != 0){%>with a win rate of <%}else{};%><% out.print(wr4);%>%</h3> --%>
	 	
<%-- 	 	  <h3>Nemesis: <%out.print(DatabaseManager.getheroname(h5));%> <%if(wr5 != 0 && h5 != 0){%>with <%}else{};%><% out.print(wr5);%> games played!</h3> --%>
<%-- 	 	  <h3>Win rate standard deviation: <%out.print(DatabaseManager.getaverage(Integer.parseInt(hero)));%></h3> --%>
	 	  
	  <%}; %>

</div>
<div class="col-lg-4"></div>
<div class="col-lg-4">

<% 
int[] empty = new int[0]; 
double[][] averages = DatabaseManager.getaverages(empty); %>
</br></br>
<h3>Best Average Heroes</h3>
<div class="row" margin: 5px>
      <table class="table">
      <thead>
         <tr>
           <th>Hero</th>
           <th>Win Rate</th>
		   <th>Standard Deviation</th>
         </tr>
       </thead>
        <tbody>
          <tr>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[0][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[0][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[0][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[1][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[1][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[1][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[2][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[2][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[2][1]));%>%</td>
          </tr>
           <tr>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int) averages[3][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[3][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[3][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[4][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[4][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[4][1]));%>%</td>
          </tr>
           <tr>
            <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[5][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[5][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[5][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[6][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[6][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[6][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[7][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[7][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[7][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[8][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[8][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[8][1]));%>%</td>
          </tr>
           <tr>
             <td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)averages[9][1]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="51" width="90"/></td>
          	<td><%out.print(averages[9][0]);%>%</td>
          	<td><%out.print(DatabaseManager.getstandarddev((int)averages[9][1]));%>%</td>
          </tr>
         
        </tbody>
      </table>
    </div>

</div>

</body>
</html>
