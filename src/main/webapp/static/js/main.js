/**
 * 
 */
document.addEventListener('DOMContentLoaded', () => {
	


	
    var actionForm = $("#actionForm");
 	$(".page-link").on("click", function(e){
		 e.preventDefault();
		 
		 var targetpage = $(this).attr("href");
		
		 console.log(targetpage);
		 
		 $("#focus").focus();
		 
		 actionForm.find("input[name='pageNum']").val(targetpage);
		 
		 actionForm.submit();
		 
		 
		 
	 });
	 
	
});

