<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>상품</title>
<script> 
    function deleteById(id){
        console.log(id);
        $.ajax({
            type : "post", 
            url : "/product/prod?cmd=deleteProc",
            data : "id=" + id,
            contentType : "application/x-www-form-urlencoded; charset-utf-8",
            dataType : "text"
            }).done(function(result){
               if(result == "1"){
                  alert("삭제 성공");
                  var trItem = $("#tr-" + id);
                   trItem.remove();
                   }else{ 
                   alert("삭제 실패");
                       }
                
            }).fail(function(error){
                 alert("삭제 실패")
            });

        }

</script>
</head>
<body>
	<h1>상품</h1>
	<input type="button" name="btn" value="처음으로">
	<input type="button" name="btn1" value="가격순">
	<input type="button" name="btn2" value="판매순">

	<table border="1">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>종류</th>
			<th>가격</th>
			<th>판매수</th>
		</tr>

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
	</table>
</body>
</html>

