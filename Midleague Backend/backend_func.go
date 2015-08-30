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

func db_news_get_short() [3][6]string {
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
	rows, err := db.Query("SELECT comments, img, title, author, text_short FROM news ORDER BY id DESC LIMIT 3 OFFSET 1")
	if err != nil {
			log.Fatal(err)
	}
	
	var s [3][6]string
	code := "401"
	num := 0
	for rows.Next() {
		err := rows.Scan(&comments, &img, &title, &author, &text_short)
		if err != nil {
			log.Fatal(err)
		}
		s[num][0] = code
		s[num][1] = comments
		s[num][2] = img
		s[num][3] = title
		s[num][4] = author
		s[num][5] = text_short
		num = num + 1
	}
	return s	
}

func db_news_get_long() [1][8]string {
	db := db_connect()
	defer db.Close()

	var (
		//date string
		img string
		title string
		author string
		//text string
		date string
		text string
		comments string
	)
	rows, err := db.Query("SELECT comments, img, title, author, text, date FROM news ORDER BY id DESC LIMIT 1")
	if err != nil {	log.Fatal(err) }	
	var s [1][8]string
	code := "402"	
	for rows.Next() {
		err = rows.Scan(&comments, &img, &title, &author, &text, &date)
			if err != nil {	log.Fatal(err) }			
		s[0][0] = code
		s[0][1] = comments
		s[0][2] = img
		s[0][3] = title
		s[0][4] = author
		s[0][5] = text
		s[0][6] = date
		s[0][7] = author
	}
		return s	
}

func db_sponssor_index() []byte{
	db := db_connect()
	defer db.Close()

	var (
		//date string
		img string
		url string
	)
	rows, err := db.Query("SELECT img, url FROM sponsors LIMIT 5")
	if err != nil {	log.Fatal(err) }	
	
	var s [5][3]string
	code := "403"
	key := 0
	for rows.Next() {
		err = rows.Scan(&img, &url)
			if err != nil {	log.Fatal(err) }
		s[key][0] = code
		s[key][1] = img
		s[key][2] = url
		key = key + 1
	}
		b, err := json.Marshal(s)
		if err != nil  { log.Fatal(err)	}
		return b	
}
// END Database Handling

// Client Servning
func news_delivery(size string) []byte {
	switch {
    case size == "long":
        s := db_news_get_long()
		b, err := json.Marshal(s)
		if err != nil  { log.Fatal(err)	}
		return b
    case size == "short":
        s := db_news_get_short()
		b, err := json.Marshal(s)
		if err != nil  { log.Fatal(err)	}
		return b
    }
		b, err := json.Marshal("error")
		if err != nil  { log.Fatal(err)	}
		return b
}
