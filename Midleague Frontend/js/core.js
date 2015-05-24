	$( document ).ready(function() {	
		if ("WebSocket" in window) {
		}
		else{
			alert("Your browser dont support Websockets, this site wont function with out it.");
			window.location.replace("https://www.mozilla.org");
		}
		ws = new WebSocket("ws://192.168.0.5:1234/ws");
			ws.onopen = function(){
			}			
			/* Live */
			ws.onmessage = function(e){
				document.getElementById("psa_info_tag").innerHTML = "System online! - Connection logged";			
				window.onbeforeunload = ws.onclose;
				conn_icon_animator("#conn_icon", "green");					
				window.online = 1;
				receive(e.data);				
				var obj = JSON.parse(e.data);							
					if (obj[0][0] == "401") {
							window.news_short = obj;												
					}
					if (obj[0][0] == "402") {
							window.news_long = obj;												
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
		var titleTimer1 = setInterval(function(){
			if (window.news_short[0][0] == "401"){
				document.getElementById("news_s_1_comments").innerHTML = window.news_short[0][1];
				document.getElementById("news_s_1_img").src = window.news_short[0][2];
				document.getElementById("news_s_1_title").innerHTML = window.news_short[0][3];
				document.getElementById("news_s_1_text").innerHTML = window.news_short[0][5];

				document.getElementById("news_s_2_comments").innerHTML = window.news_short[1][1];
				document.getElementById("news_s_2_img").src = window.news_short[1][2];
				document.getElementById("news_s_2_title").innerHTML = window.news_short[1][3];
				document.getElementById("news_s_2_text").innerHTML = window.news_short[1][5];

				document.getElementById("news_s_3_comments").innerHTML = window.news_short[2][1];
				document.getElementById("news_s_3_img").src = window.news_short[2][2];
				document.getElementById("news_s_3_title").innerHTML = window.news_short[2][3];
				document.getElementById("news_s_3_text").innerHTML = window.news_short[2][5];

				clearInterval(titleTimer1);
			} 
		}, 1000);
	}
	function news_long() {
		send('{"msg":"402"}');
		var titleTimer1 = setInterval(function(){
			if (window.news_long[0][0] == "402"){
				document.getElementById("news_big_comments").innerHTML = window.news_long[0][1];
				document.getElementById("news_big_img").src = window.news_long[0][2];
				document.getElementById("news_big_title").innerHTML = window.news_long[0][3];
				document.getElementById("news_big_text").innerHTML = window.news_long[0][5];
				document.getElementById("news_big_date").innerHTML = window.news_long[0][6];
				document.getElementById("news_big_author").innerHTML = window.news_long[0][7];

				clearInterval(titleTimer1);
			} 
		}, 1000);
	}