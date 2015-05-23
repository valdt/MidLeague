$(document).ready(function() {
	
	$("#account-panel, #hide-accpanel").click(function() {
      $(".login-small").stop().slideToggle(400, "swing");
   	});

   $(".system-msg").delay(500).slideDown(500, "swing");
   $("#hide-sysmsg").click(function() {
      $(".system-msg").slideUp(500, "swing");
   });

});