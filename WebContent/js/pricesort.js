function sortbyprice(){
	     
	$.ajax({
		  type : "get",
		  url : "/product/prod?cmd=priceSortProc", 
		  contentType : "application/x-www-form-urlencoded; charset-utf-8",
		  dataType : "json"
		  
	  }).done(function(result){
		  $("#tbody").empty();
		  for(var p of result){
		  var trItem = `<tr id="tr-${p.id}">`;
			  trItem += `<td>  ${p.id}  </td>`;
		      trItem += `<td> ${p.name}  </td>`;
		      trItem += `<td>  ${p.type}  </td>`;	
		      trItem += `<td> ${p.price} </td>`;
		      trItem += `<td> ${p.count}  </td>`;
		      trItem += `<td><button onclick="deleteById(${p.id})">삭제</button></td>`;
		      trItem +="</tr>"; 
		      $("#tbody").append(trItem);
		      
		      
		console.log(result);
		  }
	  }).fail();
}
