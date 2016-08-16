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
            <li><a href="DraftGame.jsp?round=0">Draft Game</a></li>
           
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
</br></br>    
<h1>Choose your difficulty!</h1>
<a href="Easy.jsp">Easy</a>
<a href="Medium.jsp?">Medium</a>
<a href="Hard.jsp?">Hard</a>

</body>
</html>