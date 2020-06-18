<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="/product/js/delete.js"></script>
<script src="/product/js/pricesort.js"></script>
<script src="/product/js/first.js"></script>
<script src="/product/js/countsort.js"></script>


<title>상품</title>
 <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <!--Import materialize.css-->
      <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
</head>
<body>
  
	<h1>상품</h1>
	<input type="button" class="waves-effect waves-light btn" onclick="tofirst()"name="btn" value="처음으로">
	<input type="button" class="waves-effect waves-light btn" onclick="sortbyprice()" name="btn1" value="가격순">
	<input type="button" class="waves-effect waves-light btn" onclick="countbyprice()"name="btn2" value="판매순">

	<table class="striped">
		<thead>
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>종류</th>
			<th>가격</th>
			<th>판매수</th>
		</tr>
		</thead>
		<tbody id="tbody">
		<c:forEach var="p" items="${products}">
			<tr id="tr-${p.id}">
				<td>${p.id}</td>
				<td>${p.name}</td>
				<td>${p.type}</td>
				<td>${p.price}</td>
				<td>${p.count}</td>
				<td><button onclick="deleteById(${p.id})">삭제</button></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</body>
</html>



