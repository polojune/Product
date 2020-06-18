function deleteById(id) {
	console.log(id);
	$.ajax({
		type : "post",
		url : "/product/prod?cmd=deleteProc",
		data : "id=" + id,
		contentType : "application/x-www-form-urlencoded; charset-utf-8",
		dataType : "text"
	}).done(function(result) {
		if (result == "1") {
			
			var trItem = $("#tr-" + id);
			trItem.remove();
		} else {
			alert("삭제 실패");
		}

	}).fail(function(error) {
		alert("삭제 실패")
	});

}

