package main

import (
	"fmt"
	"log"
	"net/http"
	"os"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello World! Gophers Unite!")
}

func main() {
	// Get the port from the OS ENV.
	port := ":" + os.Getenv("PORT")
	// Attach handler to "/"
	http.HandleFunc("/", handler)
	log.Printf("\nApplication now listening on %v\n", port)
	// Fire up the server
	http.ListenAndServe(port, nil)
}
