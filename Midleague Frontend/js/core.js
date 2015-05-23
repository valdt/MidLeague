	$( document ).ready(function() {	
		if ("WebSocket" in window) {
		}
		else{
			alert("Your browser dont support Websockets, this site wont function with out it.");
			window.location.replace("https://www.mozilla.org");
		}
		ws = new WebSocket("ws://192.168.0.5:1234/ws");
			ws.onopen = function(){
				conn_icon_animator("#conn_icon", "green");
				send('{"cookie":"no", "msg":"400"}');
				window.online = 1;
			}
			/* Live */
			ws.onmessage = function(e){			
				receive(e.data);
				var obj = JSON.parse(e.data);							
					if (obj[0][0] == "401") {
							window.news_small = obj;							
					}
				
				

			











			}
			/* Live-End */

			ws.onerror = function() {			
					
			}
			ws.onclose = function() {
				$("#conn_icon").css("background-color","red");
			}
	});

	function conn_icon_animator (div , new_color) {
		$(div).fadeOut(100);
		$(div).css("background-color",new_color);
    	$(div).fadeIn(100);
	}
	function send(msg) {
		ws.send(msg);
	}
	function receive(msg) {
		conn_icon_animator("#conn_icon", "green");
	}

	function news_short() {
		send('{"msg":"401"}');
		var titleTimer = setInterval(function(){
			if (window.news_small[0][0] == "401"){
				document.getElementById("news_s_1_img").src = window.news_small[0][2];
				document.getElementById("news_s_1_title").innerHTML = window.news_small[0][3];
				document.getElementById("news_s_1_text").innerHTML = window.news_small[0][5];
				clearInterval(titleTimer);
			} 
		}, 1000);
	}