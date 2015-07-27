package main
import (
	//"fmt"	
	"log"
	"net/http"
	"github.com/gorilla/websocket"
	"encoding/json"
	"strconv"
	)
func wsHandler(w http.ResponseWriter, r *http.Request){
	w.Header().Set("Access-Control-Allow-Origin", "*")
	var upgrader = websocket.Upgrader {
		ReadBufferSize:  1024,
		WriteBufferSize: 1024,
		CheckOrigin: func(r *http.Request) bool {return true},
	}

	conn, err := upgrader.Upgrade(w, r, nil)
		if err != nil {
			log.Println(err)
			return
		}
	
	// Incoming message handling.
	for {
		_, msg, err := conn.ReadMessage()
			if err != nil {
				log.Println(err)
				return
			}
		
		//incoming_msg := []byte(string(msg))		
		incoming_msg := msg

		type decodedMsg struct {
			// Session Structers
			Cookie string
			Msg    string
			// News Structers
			Date string
			Img string
			Title string
			Author string
			Text string
			Text_short string
		}
		var m decodedMsg
		err = json.Unmarshal(incoming_msg, &m)
			if err != nil {
				log.Println(err)
				return
			}
		// Handling diffrent requests
		
		log.Println("Recived a " + m.Msg + " from " + conn.RemoteAddr().String() + " Loged to database!")		
		code, err := strconv.Atoi(m.Msg)
			if err != nil { return }
		db_log(conn.RemoteAddr().String(), code)
		switch  {
			case m.Msg == "400":
				
			case m.Msg == "401":
				conn.WriteMessage(websocket.TextMessage, news_delivery("short"))
			case m.Msg == "402":
				conn.WriteMessage(websocket.TextMessage, news_delivery("long"))
			case m.Msg == "403":
				conn.WriteMessage(websocket.TextMessage, db_sponssor_index())

		}

		

		//db_session_new()
		
		
	}
	// ----------------------------
defer conn.Close()
}

func main () {
	http.HandleFunc("/ws", wsHandler)
	err := http.ListenAndServe(":1234", nil)
	if err != nil {
		log.Println(err)
	}
}
