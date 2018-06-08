<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ogloszenia wg ceny</title>
<link rel="stylesheet" type="text/css" href="styl.css">
</head>
<body>
<h1>JSP - serwlet, forward, sesja</h1>

<div class="schowek">
<h4>Zapamiętane ogłoszenia</h4>
<ul>
<c:forEach var="ogl" items="${schowek}">
	<li>${ogl.marka} ${ogl.model} za <b>${ogl.cena}</b></li>
</c:forEach>
</ul>
</div>

<form method="post">
	Cena minimalna: <input type="text" name="min" value="${param.min}"><br>
	Cena maksymalna: <input type="text" name="max" value="${param.max}"><br>
	<button>Wyszukaj</button>
</form>

<h2>Ogłoszenia</h2>
<c:if test="${! empty param.min}">
	<p>Cena minimalna: <strong>${param.min}</strong></p>
</c:if>
<c:if test="${! empty param.max}">
	<p>Cena maksymalna: <strong>${param.max}</strong></p>
</c:if>

<c:forEach var="ogl" items="${ogloszenia}" >
	<div class="ogloszenie">
		<h2>${ogl.tytul}</h2>
		<img class="foto" src="foto?id=${ogl.idOgloszenia}">
		<p>${ogl.marka} ${ogl.model} ${ogl.generacja}</p>
		<p>${ogl.cena} PLN</p>
		<p>Lokalizacja ${ogl.lokalizacja}</p>
		<p>Wystawione ${ogl.wystawione}</p>
		<p>${ogl.opis}</p>
		<h3>Sprzedawca</h3>
		<p>${ogl.sprzedawca.nazwa}</p>
		<p>tel. ${ogl.sprzedawca.telefon}</p>
		<p><a href="DodajDoSchowka?id=${ogl.idOgloszenia}">zapamiętaj</a></p>
	</div>
</c:forEach>

</body>
</html>
