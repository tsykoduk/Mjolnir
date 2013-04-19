package main

import "fmt"
import "strconv"

func main() {
	for ol := 1; ol <= 10; ol ++ {
		for il := 1; il <= 10; il ++ {
			fmt.Printf("number " + strconv.Itoa(il) + " of run " + strconv.Itoa(ol) + "\n")
		}
	}
}