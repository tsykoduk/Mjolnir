package main

import "fmt"
import "strconv"
import "os/exec"

func main() {
	for ol := 1; ol <= 100; ol ++ {
		for il := 1; il <= 100; il ++ {
			fmt.Printf("number " + strconv.Itoa(il) + " of run " + strconv.Itoa(ol) + "\n")
		}
	}
}
