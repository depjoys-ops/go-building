package main 

import (
	"fmt"
	"runtime"
)

func main() {
	fmt.Println("Hello, world!")
	run()
}

func run() {
	fmt.Println(runtime.NumCPU())
}