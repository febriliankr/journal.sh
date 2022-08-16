package main

import (
	"fmt"
	"log"
	"os"
	"time"

	"github.com/urfave/cli/v2"
)

func main() {
	app := &cli.App{
		Name:  "Journal",
		Usage: "A simple journal CLI, for date generation",
		Action: func(*cli.Context) error {
			today := time.Now()
			todayString := today.Format("Jan 1st, 2006")
			fmt.Println(todayString)
			return nil
		},
	}
	// generate todays date with this format "Jan 1st, 2006"

	if err := app.Run(os.Args); err != nil {
		log.Fatal(err)
	}
}
