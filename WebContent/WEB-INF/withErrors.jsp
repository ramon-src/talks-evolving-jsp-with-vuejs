<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<h3>Adicione valores a lista</h3>
<input type="text" id="input-description" value="">
<button onclick="addValue()">Add to list</button>

<div class="vue-components">
	<list-adapter></list-adapter>	
	<script>
		console.log('alo')
	</script>
</div>


<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>

<%@include file="ListItem.jsp" %>
<%@include file="TheList.jsp" %>
<%@include file="ListAdapter.jsp" %>

<script>

function addValue() {
	var value = document.getElementById('input-description').value
	var event = new CustomEvent('refreshlist', {detail: {description: value}});
	console.log(event)
	window.dispatchEvent(event)
}

const vues = document.querySelectorAll(".vue-components");

vues.forEach(function (el, index){
	new Vue({el})	
})
</script>


</body>
</html>