$(function () {  
  $('#jobs th a, #jobs .pagination a').live('click', function () {  
    $.getScript(this.href);  
    return false;  
  })
  $('#jobs_search').submit(function () {  
  	$.get(this.action, $(this).serialize(), null, 'script');  
    return false;  
  });
  $('.hide_items').click(function(){
  		$(this).closest("tr").next().toggleClass("hidden");
  })  
});  

