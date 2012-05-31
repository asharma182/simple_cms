/*$(document).ready(function(){
$("#content").click(function(){
$(this).hide(500);

});
});

$(document).ready(function(){
$("#content").click(function(){
	$(this).show(500);
});
})*/
/*
$(document).ready(function(){
	$('#content').click(function(){
	  $(this).fadeOut(1000,function(){
	  	$(this).addClass('.show').fadeIn(1000);
	  });
	});
});
*/

$(document).ready(function(){
	$('#content').click(function(){
		var show=confirm("Do you want to view this subject");
		if(!show){
			return false;
		}else{
			$(this).fadeOut(1000,function(){
				
				$('#content').fadeIn(1000);
			});
		}
	});
});