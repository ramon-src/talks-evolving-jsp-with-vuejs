<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script type="text/x-template" id="ListAdapter">
    <the-list :list="list"></the-list>
</script>

<script>
var ListAdapter = Vue.component('list-adapter', {
	template: '#ListAdapter',
	components: {TheList},
	data() {
		return {
			list: [
				{description: 'item'}
			]
		}
	},
	created() {
   		var _self = this;
   		window.addEventListener('refreshlist', function (event){
   			_self.$data.list.push(event.detail);
		});
	}
});
</script>