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
    
<%
	String heroID1 = request.getParameter("EnemyHeroPick1");
	String heroID2 = request.getParameter("EnemyHeroPick2");
	String heroID3 = request.getParameter("EnemyHeroPick3");
	String heroID4 = request.getParameter("EnemyHeroPick4");
	String heroID5 = request.getParameter("EnemyHeroPick5");
	String fheroID1 = request.getParameter("FriendlyHeroPick1");
	String fheroID2 = request.getParameter("FriendlyHeroPick2");
	String fheroID3 = request.getParameter("FriendlyHeroPick3");
	String fheroID4 = request.getParameter("FriendlyHeroPick4");
	String fheroID5 = request.getParameter("FriendlyHeroPick5");
	String bheroID1 = request.getParameter("EnemyHeroBan1");
	String bheroID2 = request.getParameter("EnemyHeroBan2");
	String bheroID3 = request.getParameter("EnemyHeroBan3");
	String bheroID4 = request.getParameter("EnemyHeroBan4");
	String bheroID5 = request.getParameter("EnemyHeroBan5");
	String bfheroID1 = request.getParameter("FriendlyHeroBan1");
	String bfheroID2 = request.getParameter("FriendlyHeroBan2");
	String bfheroID3 = request.getParameter("FriendlyHeroBan3");
	String bfheroID4 = request.getParameter("FriendlyHeroBan4");
	String bfheroID5 = request.getParameter("FriendlyHeroBan5");
%>
</br></br>
<div class="col-lg-2">
<form action = "index.jsp" method = "POST">
<h2>Friendly Team Picks</h2>
<%List<String> demheroes = DatabaseManager.getAllHeroes();%>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroPick1">
<option value ="0">Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(fheroID1 != null){if(Integer.parseInt(fheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroPick2">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(fheroID2 != null){if(Integer.parseInt(fheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroPick3">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(fheroID3 != null){if(Integer.parseInt(fheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroPick4">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(fheroID4 != null){if(Integer.parseInt(fheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroPick5">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(fheroID5 != null){if(Integer.parseInt(fheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<h2>Enemy Team Picks</h2>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroPick1" value>
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(heroID1 != null){if(Integer.parseInt(heroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroPick2">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(heroID2 != null){if(Integer.parseInt(heroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroPick3">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(heroID3 != null){if(Integer.parseInt(heroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroPick4">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %>
<option value=<%=(i+1)%> <%if(heroID4 != null){if(Integer.parseInt(heroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroPick5">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(heroID5 != null){if(Integer.parseInt(heroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option>
<%}%>
</select>
</br>
</br>
</br></br></br></br>
<h2>With: </h2>
				<table style="float: left" width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				</tr></table>
				
				
<h2>Your bans:</h2>

				<table width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>					 
				</tr></table>
</div>

<div class="col-lg-2">
<h2>Friendly Team Bans</h2>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroBan1">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bfheroID1 != null){if(Integer.parseInt(bfheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroBan2">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bfheroID2 != null){if(Integer.parseInt(bfheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroBan3">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bfheroID3 != null){if(Integer.parseInt(bfheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroBan4">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bfheroID4 != null){if(Integer.parseInt(bfheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="FriendlyHeroBan5">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bfheroID5 != null){if(Integer.parseInt(bfheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<h2>Enemy Team Bans</h2>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroBan1">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bheroID1 != null){if(Integer.parseInt(bheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroBan2">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bheroID2 != null){if(Integer.parseInt(bheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroBan3">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bheroID3 != null){if(Integer.parseInt(bheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroBan4">
<option value="0" >Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bheroID4 != null){if(Integer.parseInt(bheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
<select onchange="this.form.submit()" class="form-control" name="EnemyHeroBan5">
<option value="0">Choose a hero!</option>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> <option value=<%=(i+1)%> <%if(bheroID5 != null){if(Integer.parseInt(bheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
</select>
</br>

</form>
</div>

<%		
		int[] heroes = new int[5];
		int[] bheroes = new int[20];
		
		if (heroID1 != null){
			heroes[0] =  Integer.parseInt(heroID1);
			bheroes[10] =  Integer.parseInt(heroID1);
		}
		if (heroID2 != null){
			heroes[1] =  Integer.parseInt(heroID2);
			bheroes[11] =  Integer.parseInt(heroID2);
		}
		if (heroID3 != null){
			heroes[2] =  Integer.parseInt(heroID3);
			bheroes[12] =  Integer.parseInt(heroID3);
		}
		if (heroID4 != null){
			heroes[3] =  Integer.parseInt(heroID4);
			bheroes[13] =  Integer.parseInt(heroID4);
		}
		if (heroID5 != null){
			heroes[4] =  Integer.parseInt(heroID5);
			bheroes[14] =  Integer.parseInt(heroID5);
		}
		
		int[] fheroes = new int[5];
		
		if (heroID1 != null){
			fheroes[0] =  Integer.parseInt(fheroID1);
			bheroes[15] =  Integer.parseInt(fheroID1);
		}
		if (heroID2 != null){
			fheroes[1] =  Integer.parseInt(fheroID2);
			bheroes[16] =  Integer.parseInt(fheroID2);
		}
		if (heroID3 != null){
			fheroes[2] =  Integer.parseInt(fheroID3);
			bheroes[17] =  Integer.parseInt(fheroID3);
		}
		if (heroID4 != null){
			fheroes[3] =  Integer.parseInt(fheroID4);
			bheroes[18] =  Integer.parseInt(fheroID4);
		}
		if (heroID5 != null){
			fheroes[4] =  Integer.parseInt(fheroID5);
			bheroes[19] =  Integer.parseInt(fheroID5);
		}
		
		
		
		if (bheroID1 != null){
			bheroes[0] =  Integer.parseInt(bheroID1);
		}
		if (bheroID2 != null){
			bheroes[1] =  Integer.parseInt(bheroID2);
		}
		if (bheroID3 != null){
			bheroes[2] =  Integer.parseInt(bheroID3);
		}
		if (bheroID4 != null){
			bheroes[3] =  Integer.parseInt(bheroID4);		
		}
		if (bheroID5 != null){
			bheroes[4] =  Integer.parseInt(bheroID5);
		}
		if (bfheroID1 != null){
			bheroes[5] =  Integer.parseInt(bfheroID1);
		}
		if (bfheroID2 != null){
			bheroes[6] =  Integer.parseInt(bfheroID2);
		}
		if (bfheroID3 != null){
			bheroes[7] =  Integer.parseInt(bfheroID3);
		}
		if (bfheroID4 != null){
			bheroes[8] =  Integer.parseInt(bfheroID4);
		}
		if (bfheroID5 != null){
			bheroes[9] =  Integer.parseInt(bfheroID5);
		}
		
		double[][] picks = new double[10][2];
		double[][] bans = new double[10][2];		
		if(heroes[0] == 0 && heroes[1] == 0 && heroes[2] == 0 && heroes[3] == 0 && heroes[4] == 0){
			
		}
		else{
			picks = (DatabaseManager.getgrouphero(heroes, bheroes));	
			bans = (DatabaseManager.getgrouphero(fheroes, bheroes));
		}
		List<String> demheroesclassic = DatabaseManager.getAllHeroes();
		int demheroessize = demheroes.size();
		for(int i=0; i< demheroessize - 10; i++){
			for(int j =0; j< (bheroes.length -1); j++){
				if(DatabaseManager.getheroname(bheroes[j]) == demheroes.get(i)){
					demheroes.set(i, "NOHERO");
				}
			}
		}
	
%>

<div class="col-lg-1"></div>
<div class="col-lg-3">
<h3>Advised Picks</h3>
<table class="table table-bordered" width=40% border="2">
  <col width="15%">
  <col width="5%">
  <col width="5%">
  <tr>
    <th>Pick</th>
    <th></th>
    <th>Win %</th> 
  </tr>

  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[0][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[0][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[0][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[1][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[1][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[1][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[2][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[2][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[2][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[3][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[3][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[3][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[4][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[4][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[4][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[5][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[5][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[5][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[6][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[6][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[6][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[7][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[7][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[7][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[8][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[8][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[8][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)picks[9][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)picks[9][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - picks[9][1],2)); %></td>
  </tr>  
</table>
</br>
<h2>Against:</h2>	
				<table style="float: left" width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				</tr></table>
<h2>Enemy bans:</h2>		
				<table width=30% border="1"><tr>				
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bheroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bheroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bheroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bheroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bheroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
			</tr></table>						
</div>
<div class="col-lg-3">
<h3>Advised Bans </h3>
<table class="table table-bordered" width=40% border="1">
  <col width="15%">
  <col width="5%">
  <col width="5%">
  <tr>
    <th>Ban</th>
    <th></th>
    <th>Win %</th> 
  </tr>

  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[0][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[0][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[0][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[1][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[1][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[1][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[2][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[2][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="34" width="60"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[2][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[3][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[3][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[3][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[4][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[4][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[4][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[5][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[5][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[5][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[6][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[6][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[6][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[7][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[7][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[7][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[8][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[8][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[8][1],2)); %></td>
  </tr>
  <tr>
  	<td><% out.print(DatabaseManager.getheroname((int)bans[9][0])); %></td>
  	<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print((int)bans[9][0]);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png" height="25" width="45"/></td>
  	<td><% out.print(DatabaseManager.round(100 - bans[9][1],2)); %></td>
  </tr>  
</table>

</div>

						
    <div style="position: absolute; bottom: 5px; right: 2px;">
    <p>Dota 2 is a registered trademark of Valve Corporation.</p>
    </div>
</body>

</html>