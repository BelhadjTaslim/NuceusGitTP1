<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	MetierVarietes metier = new MetierVarietes() ;
%>
<html lang="fr">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css" href="style/bootstrap-3.3.2-dist/css/bootstrap.css" rel="stylesheet" >
<title>Nuceus 0.1</title>
</head>
<body>
		<h1 class="text-center">Liste des variétés de Noix</h1>
		<hr/>
		<div class="container">
		<div class="row">
		<div class="col-lg-12">
		<%
			List<Variete> varietes = metier.consulter();
		%>
		<div class="col-lg-3"></div>
		<table class="col-lg-6" border="1" style="border-collapse:collapse">
			<thead>
					<tr>
						<th>Libellé</th>
						<th>AOC</th>
					</tr>
			</thead>
			
		
			<tbody>
					<%
						for(Variete variete : varietes){
					%>
					<tr>
						<td><%= variete.getLibelle() %></td>
						<% String aoc ;
							if(variete.isAoc()==true){
								aoc = "Oui" ;
							}
							else{
								aoc="Non" ;
							}
							
						%>
						<td><%= aoc %></td>
					</tr>
					<%
						}
					%>
			</tbody>
		</table>
		<div class="col-lg-3"></div>
		</div>
		</div>
		</div>
</body>
</html>