<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-template" id="ListItem">
    <li>{{item.description}}</li>
</script>

<script>
var ListItem = Vue.component('list-item', {
	template: '#ListItem',
	props: {
		item: {}
	}
});
</script>