<%@ page import="java.util.*" %>
<%@ page import="fr.noixcoop.nuceus.*" %>
<!DOCTYPE html>
<%
	MetierVarietes metier = new MetierVarietes() ;
%>
<html lang="fr">
<head>
	<meta charset = "utf8">
</head>
<body>
		<h1>Liste des variétés de Noix</h1>
		<hr/>
		<%
			List<Variete> varietes = metier.consulter();
		%>
		<table border="1" style="border-collapse:collapse">
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
</body>
</html>