// Function list á la Hypertext Preprocessor.

// IMPORT's
package main
import (	
	"fmt"
	"database/sql"
	"time"
	"log"
	_ "github.com/go-sql-driver/mysql"
	"encoding/json"
	)
// END IMPORT
//
// Loging Functions
func log_new (ip string ) {
	fmt.Println("Established connection on: " + ip)	
}
// END Loging Functions
//
// Database Handling
func db_connect () *sql.DB {
	// TODO CHANGE PASSWORD FOR DATABASE!
	db, err := sql.Open("mysql", "root:1234@/midleague")	
	if err != nil  {
		log.Fatal(err)		
	}
	return db
}

func db_log(ip string, code int){
	db := db_connect()
	defer db.Close()

	date := time.Now().Format(time.RFC850);	
	pre_log, err := db.Prepare( "INSERT INTO log (date, ip, code) VALUES (?,?,?)" )
		if err != nil {log.Fatal(err)}
	pre_log.Exec(date, ip, code)
	return
}
func db_session_new(ip string, code int){
	db := db_connect()
	defer db.Close()

	date := time.Now().Format(time.RFC850);	
	pre_log, err := db.Prepare( "INSERT INTO session (date, ip, code) VALUES (?,?,?)" )
		if err != nil {log.Fatal(err)}
	pre_log.Exec(date, ip, code)
	return
}

func db_news_get() [3][6]string {
	db := db_connect()
	defer db.Close()

	var (
		//date string
		img string
		title string
		author string
		//text string
		text_short string
		comments string
	)
	rows, err := db.Query("SELECT comments, img, title, author, text_short FROM news ORDER BY id LIMIT 3")
	if err != nil {
			log.Fatal(err)
	}
	
	var s [3][6]string
	code := "401"
	num := 1
	for rows.Next() {
		err := rows.Scan(&comments, &img, &title, &author, &text_short)
		if err != nil {
			log.Fatal(err)
		}
		switch  {
			case num == 1:
				s[0][0] = code
				s[0][1] = comments
				s[0][2] = img
				s[0][3] = title
				s[0][4] = author
				s[0][5] = text_short
				num = num + 1
			case num == 2:
				s[1][0] = code
				s[1][1] = comments
				s[1][2] = img
				s[1][3] = title
				s[1][4] = author
				s[1][5] = text_short
				num = num + 1
			case num == 3:
				s[2][0] = code
				s[2][1] = comments
				s[2][2] = img
				s[2][3] = title
				s[2][4] = author
				s[2][5] = text_short
		}
	}
	return s	
}
// END Database Handling

// Client Servning
func news_delivery() []byte {
	s := db_news_get()	
	b, err := json.Marshal(s)
	if err != nil  {
		log.Fatal(err)		
	}
	return b
}