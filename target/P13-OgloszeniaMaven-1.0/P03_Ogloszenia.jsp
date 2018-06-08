<%@page import="ogloszenia.model.Samochodowe"%>
<%@page import="ogloszenia.baza.OgloszeniaDAO"%>
<%@page import="ogloszenia.baza.DostepDoBazy"%>
<%@page import="java.util.List"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Wszystkie ogłoszenia 3</title>
<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
<h1>JSP - wersja nieporządna ze skryptletami</h1>

<%-- scriptlety - fragmenty kodu Javy umieszczone wewnątrz JSP --%>
<%
DostepDoBazy db = new DostepDoBazy();
OgloszeniaDAO dao = db.ogloszeniaDAO();
List<Samochodowe> ogloszenia = dao.wszystkieOgloszenia();

for(Samochodowe ogl : ogloszenia) {
%>

<div class="ogloszenie">
<h2><%= ogl.getTytul() %></h2>
<p>Cena: <%=ogl.getCena()%></p>
</div>

<%
} // for
db.close();
%>

</body>
</html>
