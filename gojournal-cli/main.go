package main

import (
	"fmt"
	"time"

	"github.com/dustin/go-humanize"
)

// sudo cp jdate /usr/local/bin
func main() {
	today := time.Now()
	//  Convert time to string with format Jan 1st, 2006
	year := today.Local().Year()

	month := today.Local().Month().String()
	tdate := today.Day()
	date := humanize.Ordinal(tdate)
	out := fmt.Sprintf("- [[%s %s, %v]]", month, date, year)
	fmt.Println(out)
}
