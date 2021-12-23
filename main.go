package main

import (
	"flag"
	"fmt"
	"os"
)

var (
versionFlag       *bool
Version                 string
)

func init() {
	versionFlag = flag.Bool("v", false, "prints current version")
}

func main() {
	flag.Parse()
	if *versionFlag {
		fmt.Println(Version)
		os.Exit(0)
	}
}