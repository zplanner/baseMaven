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
<h1>Ogłoszenia wg ceny</h1>
<p>JSP - wersja z klasą „bean” - DostarczycielDanych</p>

<form id="wyszukiwarka" method="post">
	<label for="minpost">Podaj cenę minimalną:</label>
	<input name="minpost" type="text" value="${param.minpost}">
	<br>
	<label for="maxpost">Podaj cenę maksymalną:</label>
	<input name="maxpost" type="text" value="${param.maxpost}">
	<br>
	<button>Szukaj</button>
</form>

<c:forEach var="ogl" items="${ogloszenia}">
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
	</div>
</c:forEach>

</body>
</html>
