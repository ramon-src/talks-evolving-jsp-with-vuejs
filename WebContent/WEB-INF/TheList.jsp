<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-template" id="TheList">
    <ul>
		<list-item v-for="(item, index) in list" :key="index" :item="item" />
	</ul>
</script>

<script>
var TheList = Vue.component('the-list',{
	template: '#TheList',
	components: {ListItem},
	props: {
		list: {
			type: Array,
			default: []
		}
	}
});
</script>