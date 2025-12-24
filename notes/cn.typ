#align(center)[
  #box(
    width: 100%,
    stroke: (thickness: 1.3pt, paint: blue, dash: "densely-dotted"),
    inset: 12pt,
    radius: 4pt,
  )[
    #smallcaps()[
      = Golang Essentials
    ]
  ]
]

= Hello World
```go
package main

import "fmt"

func main() {
    fmt.println("Hello, World!")
}
```
== Variables
Variables in Go are declared using the `var` keyword.
```go
var x int = 10
var y = 20 // Type is inferred
z := 30    // Short variable declaration
```

In production code, it's common to use short variable declarations (`:=`) for local variables.

== Functions
Functions are defined using the `func` keyword.
```go
func add(a int, b int) int {
    return a + b
}
```
You can call the function like this:
```go
result := add(5, 10)
fmt.println(result) // Output: 15
```

*Good practice:* Always handle errors returned by functions.
```go
file, err := os.Open("file.txt")
if err != nil {
    log.Fatal(err)
}
defer file.Close()
```
The above code demonstrates error handling when opening a file.
