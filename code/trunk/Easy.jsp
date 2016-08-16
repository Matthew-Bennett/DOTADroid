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
</br></br> 
<%		
	String heroID1,heroID2,heroID3,heroID4,heroID5,bheroID1,bheroID2,bheroID3,bheroID4,bheroID5;
	String bfheroID1 = "0", bfheroID2 = "0", bfheroID3 = "0", bfheroID4 = "0", bfheroID5 = "0", fheroID1 = "0", fheroID2 = "0", fheroID3 = "0", fheroID4 = "0",fheroID5 = "0";
	int[] fpicks = new int[5];
	int[] epicks = new int[5];
	int[] used = new int[20];
	int formsession = 0;
	
	//Ban Phase 1
	//User Ban 1
	if(request.getParameter("FriendlyHeroBan1") != null && !request.getParameter("FriendlyHeroBan1").equals("0")){
		bfheroID1 = request.getParameter("FriendlyHeroBan1");
		used[0] = Integer.parseInt(bfheroID1);
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//AI Ban 1
	if(!bfheroID1.equals("0")){
 		if(!request.getParameter("bheroID1").equals("0")){
 			bheroID1 =  request.getParameter("bheroID1");
 			used[1] = Integer.parseInt(bheroID1);
 			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			bheroID1 = String.valueOf(DraftGameAI.randomhero());
			used[1] = Integer.parseInt(bheroID1);
			System.out.println("used = " + Arrays.toString(used));
			formsession = 1;
		}
 	
	}
	else{	
		bheroID1 = "0";
	}
	
	//User Ban 2
	if(request.getParameter("FriendlyHeroBan2") != null && !request.getParameter("FriendlyHeroBan2").equals("0")){
		bfheroID2 = request.getParameter("FriendlyHeroBan2");
		used[2] = Integer.parseInt(bfheroID2);
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//AI Ban 2
	if(!bfheroID2.equals("0")){
 		if(!request.getParameter("bheroID2").equals("0")){
 			bheroID2 =  request.getParameter("bheroID2");
 			used[3] = Integer.parseInt(bheroID2);
 			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			bheroID2 = String.valueOf(DraftGameAI.randomhero());
			used[3] = Integer.parseInt(bheroID2);
			System.out.println("used = " + Arrays.toString(used));
			formsession = 2;
		}
	}
	else{
		bheroID2 = "0";
	}
	
	//Pick Phase 1
	
	//User Pick 1
	if(request.getParameter("FriendlyHeroPick1") != null && !request.getParameter("FriendlyHeroPick1").equals("0")){
		fheroID1 = request.getParameter("FriendlyHeroPick1");
		used[4] = Integer.parseInt(fheroID1);
		fpicks[0] = Integer.parseInt(fheroID1);
		System.out.println("fpicks = " + Arrays.toString(fpicks));
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//AI Pick 1
		if(!fheroID1.equals("0")){
	 		if(!request.getParameter("heroID1").equals("0")){
	 			heroID1 =  request.getParameter("heroID1");
				epicks[0] = Integer.parseInt(heroID1);
				used[5] = Integer.parseInt(heroID1);
				System.out.println("epicks = " + Arrays.toString(epicks));
				System.out.println("used = " + Arrays.toString(used));;
			}
			else{
				heroID1 = String.valueOf(DraftGameAI.randombot30heroes(fpicks, used));
				epicks[0] = Integer.parseInt(heroID1);
				used[5] = Integer.parseInt(heroID1);
				System.out.println("epicks = " + Arrays.toString(epicks));
				System.out.println("used = " + Arrays.toString(used));;
				
			}
		}
		else{heroID1 = "0";}
	
		//AI Pick 2
		if(!fheroID1.equals("0")){
			if(!request.getParameter("heroID2").equals("0")){
				heroID2 =  request.getParameter("heroID2");
				epicks[1] = Integer.parseInt(heroID2);
				used[6] = Integer.parseInt(heroID2);
				System.out.println("epicks = " + Arrays.toString(epicks));
				System.out.println("used = " + Arrays.toString(used));			
			}
			else{		
				heroID2 = String.valueOf(DraftGameAI.randombot30heroes(fpicks, used));
				epicks[1] = Integer.parseInt(heroID2);
				used[6] = Integer.parseInt(heroID2);
				System.out.println("epicks = " + Arrays.toString(epicks));
				System.out.println("used = " + Arrays.toString(used));
				formsession = 4;
			}
		}
		else{heroID2 = "0";}
	
	//User Pick 2
	if(request.getParameter("FriendlyHeroPick2") != null && !request.getParameter("FriendlyHeroPick2").equals("0")){
		fheroID2 = request.getParameter("FriendlyHeroPick2");
		fpicks[1] = Integer.parseInt(fheroID2);
		used[7] = Integer.parseInt(fheroID2);
		System.out.println("fpicks = " + Arrays.toString(fpicks));
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//Ban Phase 2
	
	//User Ban 3
	if(request.getParameter("FriendlyHeroBan3") != null && !request.getParameter("FriendlyHeroBan3").equals("0")){
		bfheroID3 = request.getParameter("FriendlyHeroBan3");
		used[8] = Integer.parseInt(bfheroID3);
		System.out.println("used = " + Arrays.toString(used));
	}	
	
	//AI Ban 3
	if(!fheroID2.equals("0") && !bfheroID3.equals("0")){
		if(!request.getParameter("bheroID3").equals("0")){
			bheroID3 =  request.getParameter("bheroID3");
			used[9] = Integer.parseInt(bheroID3);
			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			bheroID3 = String.valueOf(DraftGameAI.randombot30heroes(epicks, used));
			used[9] = Integer.parseInt(bheroID3);
			System.out.println("used = " + Arrays.toString(used));
			formsession = 5;
		}
	}
	else{bheroID3 = "0";}
	
	//User Ban 4
	if(request.getParameter("FriendlyHeroBan4") != null && !request.getParameter("FriendlyHeroBan4").equals("0")){
		bfheroID4 = request.getParameter("FriendlyHeroBan4");
		used[10] = Integer.parseInt(bfheroID4);
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//AI Ban 4
	if(!bfheroID4.equals("0")){
 		if(!request.getParameter("bheroID4").equals("0")){
 			bheroID4 =  request.getParameter("bheroID4");
 			used[11] = Integer.parseInt(bheroID4);
			System.out.println("used = " + Arrays.toString(used));
		}
		else{			
			bheroID4 = String.valueOf(DraftGameAI.randombot30heroes(epicks, used));
			used[11] = Integer.parseInt(bheroID4);
			System.out.println("used = " + Arrays.toString(used));
			formsession = 6;
		}
	}
	else{bheroID4 = "0";}
	
	//Pick Phase 2
	
	//AI Pick 3
	if(!bfheroID4.equals("0")){
 		if(!request.getParameter("heroID3").equals("0")){
 			heroID3 =  request.getParameter("heroID3");
 			epicks[2] = Integer.parseInt(heroID3);
			used[12] = Integer.parseInt(heroID3);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			heroID3 = String.valueOf(DraftGameAI.randombot30heroes(fpicks, used));
			epicks[2] = Integer.parseInt(heroID3);
			used[12] = Integer.parseInt(heroID3);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
			formsession = 7;
		}
	}
	else{heroID3 = "0";}
	
	//User Pick 3
	if(request.getParameter("FriendlyHeroPick3") != null && !request.getParameter("FriendlyHeroPick3").equals("0")){
		fheroID3 = request.getParameter("FriendlyHeroPick3");
		fpicks[2] = Integer.parseInt(fheroID3);
		used[13] = Integer.parseInt(fheroID3);
		System.out.println("fpicks = " + Arrays.toString(fpicks));
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//AI Pick 4
	if(!fheroID3.equals("0")){
		if(!request.getParameter("heroID4").equals("0")){
			heroID4 =  request.getParameter("heroID4");
			epicks[3] = Integer.parseInt(heroID4);
			used[14] = Integer.parseInt(heroID4);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			heroID4 = String.valueOf(DraftGameAI.randombot30heroes(fpicks, used));
			epicks[3] = Integer.parseInt(heroID4);
			used[14] = Integer.parseInt(heroID4);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
			formsession = 8;
		}
	}
	else{heroID4 = "0";}
	
	//User Pick 4
	if(request.getParameter("FriendlyHeroPick4") != null && !request.getParameter("FriendlyHeroPick4").equals("0")){
		fheroID4 = request.getParameter("FriendlyHeroPick4");
		fpicks[3] = Integer.parseInt(fheroID4);
		used[15] = Integer.parseInt(fheroID4);
		System.out.println("fpicks = " + Arrays.toString(fpicks));
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//Ban Phase 3
	
	//AI Ban 5
	if(!fheroID4.equals("0")){
		if(!request.getParameter("bheroID5").equals("0")){
			bheroID5 =  request.getParameter("bheroID5");
			used[16] = Integer.parseInt(bheroID5);
			System.out.println("used = " + Arrays.toString(used));
			}
		else{	
			bheroID5 = String.valueOf(DraftGameAI.randombot30heroes(epicks, used));
			used[16] = Integer.parseInt(bheroID5);
			System.out.println("used = " + Arrays.toString(used));
			formsession = 9;
		}
	}
	else{bheroID5 = "0";}
	
	//User Ban 5
	if(request.getParameter("FriendlyHeroBan5") != null && !request.getParameter("FriendlyHeroBan5").equals("0")){
		bfheroID5 = request.getParameter("FriendlyHeroBan5");
		used[17] = Integer.parseInt(bfheroID5);	
		System.out.println("used = " + Arrays.toString(used));
	}
	
	//Pick Phase 3
	
	//AI Pick 5
	if(!bfheroID5.equals("0")){
		if(!request.getParameter("heroID5").equals("0")){
			heroID5 =  request.getParameter("heroID5");
			epicks[4] = Integer.parseInt(heroID5);
			used[18] = Integer.parseInt(heroID5);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
		}
		else{
			heroID5 = String.valueOf(DraftGameAI.randombot30heroes(fpicks, used));
			epicks[4] = Integer.parseInt(heroID5);
			used[18] = Integer.parseInt(heroID5);
			System.out.println("epicks = " + Arrays.toString(epicks));
			System.out.println("used = " + Arrays.toString(used));
			formsession = 10;
		}
	}
	else{heroID5 = "0";}
	
	//User Pick 5
	if(request.getParameter("FriendlyHeroPick5") != null && !request.getParameter("FriendlyHeroPick5").equals("0")){
		fheroID5 = request.getParameter("FriendlyHeroPick5");
		fpicks[4] = Integer.parseInt(fheroID5);
		used[19] = 	Integer.parseInt(fheroID5);
		System.out.println("fpicks = " + Arrays.toString(fpicks));
		System.out.println("used = " + Arrays.toString(used));
	}
	
	
	
	String header = "?heroID1=" + heroID1 + "&heroID2=" + heroID2 + "&heroID3=" + heroID3 + "&heroID4=" + heroID4 + 
					"&heroID5=" + heroID5 + "&bheroID1=" + bheroID1 + "&bheroID2=" + bheroID2 + "&bheroID3=" + bheroID3 +
					"&bheroID4=" + bheroID4 + "&bheroID5=" + bheroID5;
	
List<String> demheroesclassic = DatabaseManager.getAllHeroes();
List<String> demheroes = DatabaseManager.getAllHeroes();
int demheroessize = demheroes.size();
for(int i=0; i< demheroessize - 10; i++){
	for(int j =0; j< (used.length -1); j++){
		if(DatabaseManager.getheroname(used[j]) == demheroes.get(i)){
			demheroes.set(i, "NOHERO");
		}
	}
}
%>
<div class="col-lg-4">
<form action = <%="Easy.jsp" + header%> method = "POST">

<h3>Ban</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroBan1">
<option value="0" >Choose a hero!</option>
<%if(formsession == 0){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID1 != null){if(Integer.parseInt(bfheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID1 != null){if(Integer.parseInt(bfheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Ban</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroBan2" onchange="this.form.submit()">
<option value="0" >Choose a hero!</option>
<%if(formsession == 1){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID2 != null){if(Integer.parseInt(bfheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID2 != null){if(Integer.parseInt(bfheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Pick</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroPick1" >
<option value ="0">Choose a hero!</option>
<%if(formsession == 2){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID1 != null){if(Integer.parseInt(fheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID1 != null){if(Integer.parseInt(fheroID1) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Pick</h3>
<select style="width: 300px" class="form-control" name="FriendlyHeroPick2">
<option value="0" >Choose a hero!</option>
<%if(formsession == 4){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID2 != null){if(Integer.parseInt(fheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID2 != null){if(Integer.parseInt(fheroID2) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>

<h3>Ban</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroBan3">
<option value="0" >Choose a hero!</option>
<%if(formsession == 4){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID3 != null){if(Integer.parseInt(bfheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID3 != null){if(Integer.parseInt(bfheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Ban</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroBan4">
<option value="0" >Choose a hero!</option>
<%if(formsession == 5){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID4 != null){if(Integer.parseInt(bfheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID4 != null){if(Integer.parseInt(bfheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Pick</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroPick3">
<option value="0" >Choose a hero!</option>
<%if(formsession == 7){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID3 != null){if(Integer.parseInt(fheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID3 != null){if(Integer.parseInt(fheroID3) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Pick</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroPick4">
<option value="0" >Choose a hero!</option>
<%if(formsession == 8){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID4 != null){if(Integer.parseInt(fheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID4 != null){if(Integer.parseInt(fheroID4) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Ban</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroBan5">
<option value="0" >Choose a hero!</option>
<%if(formsession == 9){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID5 != null){if(Integer.parseInt(bfheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(bfheroID5 != null){if(Integer.parseInt(bfheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>


<h3>Pick</h3>
<select onchange="this.form.submit()" style="width: 300px" class="form-control" name="FriendlyHeroPick5">
<option value="0" >Choose a hero!</option>
<%if(formsession == 10){ %>
<%for(int i = 0; i < demheroes.size(); i++){%><%if(demheroes.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID5 != null){if(Integer.parseInt(fheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroes.get(i)%></option> <%}%>
<%} else{
	for(int i = 0; i < demheroesclassic.size(); i++){%><%if(demheroesclassic.get(i) == "NOHERO"){} else{ %> 
<option value=<%=(i+1)%> <%if(fheroID5 != null){if(Integer.parseInt(fheroID5) == i+1){out.print("selected");} else{};};};%>><%=demheroesclassic.get(i)%></option> <%}%>
<%
}%>
</select>

</form>
</div>
<% 	
	String[] result = new String[2];
 	int[] fheroes = new int[5];
	if (fheroID1 != null){
 		fheroes[0] = Integer.parseInt(fheroID1);
	}
 	if (fheroID2 != null){
 		fheroes[1] = Integer.parseInt(fheroID2);
 	}
 	if (fheroID3 != null){
 		fheroes[2] = Integer.parseInt(fheroID3);
 	}
 	if (fheroID4 != null){
 		fheroes[3] = Integer.parseInt(fheroID4);
 	}
 	if (fheroID5 != null){
 		fheroes[4] = Integer.parseInt(fheroID5);
 	}
	int[] eheroes = new int[5];
	if (heroID1 != null){
 		eheroes[0] = Integer.parseInt(heroID1);
	}
 	if (heroID2 != null){
 		eheroes[1] = Integer.parseInt(heroID2);
 	}
 	if (heroID3 != null){
 		eheroes[2] = Integer.parseInt(heroID3);
 	}
 	if (heroID4 != null){
 		eheroes[3] = Integer.parseInt(heroID4);
 	}
 	if (heroID5 != null){
		eheroes[4] = Integer.parseInt(heroID5);
 	}
 	if(eheroes[0] == 0 || eheroes[1] == 0 || eheroes[2] == 0 || eheroes[3] == 0 || eheroes[4] == 0 || fheroes[0] == 0 || fheroes[1] == 0 || fheroes[2] == 0 || fheroes[3] == 0 || fheroes[4] == 0){
 	}
 	else{
 		result = DatabaseManager.win(fheroes, eheroes); 
 		
 	}
	%>
<div class="col-lg-4"></div>
<h2><%if(result[0] != null){ %>You <%	if(result[0] == "true"){
				out.print("Win");
				}
				else{
				out.print("Lose");
				};	
			%> 
				
		with a   <%  
				out.print((result[1]));
			%>% chance to win!<%} %>
</h2>
<div class="col-lg-4">
<h2>With: </h2>
				<table style="float: left" width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(fheroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				</tr></table>			
 	</br></br></br></br>									 

<h2>Against:</h2>	
				<table style="float: left" width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(heroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				</tr></table>
	</br></br></br></br>			



<h2>Your bans:</h2>

				<table width=30% border="1"><tr>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID1);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID2);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID3);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID4);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>
				<td><img src="/PrototypeServer/HERO_AVATARS/<%out.print(bfheroID5);%>.png" alt="/PrototypeServer/HERO_AVATARS/0.png"/></td>					 
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
<div style="position: absolute; bottom: 5px; right: 2px;">
    <p>Dota 2 is a registered trademark of Valve Corporation.</p>
    </div>
</body>
</html>