<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<%@ page import="java.util.*"%>
<%@ page import="java.io.*"%>
<%@ page import="model.*"%>
<head>
<meta charset="ISO-8859-1">
<title>Benvenuto</title>
</head>
<body bgcolor="aliceblue">
	<%
	List<Utente> listaUsers = (List<Utente>) request.getAttribute("listaUtente");
	Utente utenteTrovato = (Utente) request.getAttribute("utenteLoggato");
	%>
	<%
	Utente utente = (Utente) request.getAttribute("utenteTrovato");
	List<Pizza> listaPizze = (List<Pizza>) request.getAttribute("utente.getPizza()");
	List<Impasto> impasti = (List<Impasto>) request.getAttribute("listaPizze.impasto");
	List<Ingredienti> listaIngredienti = (List<Ingredienti>) request.getAttribute("listaPizze.listaIngredienti");
	%>

	<h1>
		Benvenuto
		<%=utenteTrovato.getUsername()%>
	</h1>

	<style>
table, th, td {
	border: 0px solid;
	width: 50%;
}

table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
</head>
<body>

	<h2>CREA LA TUA PIZZA</h2>

	<table>

		<tr>
			<td>
				</head>
				<body>

					<h2>IMPASTO</h2>

					<p>Scegli l'impasto spaciale tra quelli disponibili :</p>
					<form action=""<%=request.getContextPath()%>/InsertLogin"></form>
					<table>

						<td><input type="radio" name="branch" value="normale">
							Normale<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="curcuma">
								Curcuma<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="multicereale">
								Multicereale<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="canapa">
								Canapa<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="carbone attivo">
								Carbone Att<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="quinoa">
								Quinoa<br />
						</tr>
						<tr>
							<td><input type="radio" name="branch" value="kamut">
								Kamut<br />
						</tr>
					</td>
			<td><style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}
</style>
				</head>
				<body>

					<h2>INGREDIENTI</h2>

					<p>Scegli gli ingredienti tra quelli disponibili e
						personalizzare la tua pizza :</p>

					<table>

						<tr>
							<td><input type="checkbox" name="html" value="pomodoro">
								Pomodoro</td>
							<td><input type="checkbox" name="css" value="mozzarella">
								Mozzarella</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="html"
								value="salame piccante"> Salame Piccante</td>
							<td><input type="checkbox" name="html" value="cotto">
								Cotto</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="html" value="olive">
								Olive</td>
							<td><input type="checkbox" name="html" value="<salsiccia">
								Salsiccia</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="html" value="pomodorini">
								Pomodorini</td>
							<td><input type="checkbox" name="html" value="rucola">
								Rucola</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="html" value="wurstell">
								Wurstell</td>
							<td><input type="checkbox" name="html" value="patatine">
								Patatine</td>
						</tr>
						<tr>
							<td><input type="checkbox" name="html" value="stracciatella">
								Stracciatella</td>
							<td><input type="checkbox" name="html" value="funghi">
								Funghi</td>
						</tr>
					</table></td>
		</tr>
		<tr>
	</table>


	<style>
input {
	width: 25%;
}
</style>
</head>
<body>

	<h2>Inserisci come chiamare la pizza</h2>

	<form>
		<label for="fname">Nome Pizza</label> <input type="text" id="fname"
			name="fname">
		<button>Submit</button>
	</form>
	<h2>STORIICO PIZZE</h2>
	
	<table border="1">
			<tr>
				<td>Nome Pizza</td>
				<td>Impasto</td>
				<td>Ingredienti</td>




				<%
				List<Pizza> listaPizza = (List<Pizza>) request.getAttribute("listaPizza");

				for (int i = 0; i < listaPizza.size(); i++) {

					Pizza contattoTrovato = listaPizza.get(i);
				%>
			
			<tr>

				<td><%=contattoTrovato.getId()%></td>
				<td><%=contattoTrovato.getName()%></td>
				<td><%=contattoTrovato.getImpasto()%></td>
				<td><%=contattoTrovato.getListaIngredienti()%></td>
				<td>
				</tdi> <%
 }
 %>
		</table>


</body>

</body>
</html>