$(document).ready(function(){
	$(".hide_items").click(function(){
		$(this).closest("tr").next().toggleClass("hidden");
	});
});