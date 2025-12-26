#set page(margin: (x: 20mm, y: 15mm), columns: 1)
#set text(font: "Iosevka NF", weight: "light", size: 10pt)
#set par(justify: true)

// #show strong: it => [
//   #text(weight: "bold")[\*#it.body\*]
// ]

#show raw.where(block: true): it => text(font: "Iosevka NF", it)
#show raw.where(block: false): it => text(red, it)

#show heading.where(level: 1): it => [#h(-5mm) #text(
    weight: "bold",
    fill: gray,
  )[\#] #text(
    weight: "black",
    font: "JetBrains Mono",
    it.body,
  ) \ #v(-2mm)]

#show heading.where(level: 2): it => [#h(-6.7mm) #text(
    weight: "bold",
    fill: gray,
  )[\#\#] #text(
    weight: "bold",
    font: "JetBrains Mono",
    it.body,
  ) \ #v(-2mm)]

#let cb(title, body) = [
  #box(width: 100%, fill: gray.lighten(85%), inset: 8pt)[
    #set text(font: "Iosevka NF")
    #text(size: 8pt, weight: "bold", fill: gray)[#title]
    #v(-1mm)
    #body
  ]
]

#let question(body) = [
  #box(width: 100%, stroke: 0.3pt, inset: 8pt)[
    *Question* \
    #body
  ]
]

#let cbo(c, output) = [
  #box(width: 100%, fill: gray.lighten(85%), inset: 8pt)[
    #set text(font: "Iosevka NF")
    #grid(columns: (2fr, 1fr))[
      #box(stroke: (right: 1pt + gray.lighten(70%)), width: 100%)[
        #text(size: 8pt, weight: "bold", fill: gray)[Code] \
        #c
      ]
    ][
      #box(
        stroke: (left: 1pt + gray.lighten(70%)),
        height: auto,
        inset: (x: 8pt),
      )[
        #text(size: 8pt, weight: "bold", fill: gray)[Output] \
        #output
      ]
    ]
  ]
]

= Golang
== Introduction
Golang is a statically typed language developed by Google.

== Hello World
#cbo()[
  ```go
  package main

  import "fmt"

  func main() {
    fmt.Println("Hello World");
  }
  ```
][
  Hello World
]

== Variables
There are 2 ways to define variables:
+ Using the `var` keyword
#cb("Using the var keyword")[
  ```go
  var name string = "Himanshu" // Using explicit type
  var age = 20 // Infers type from value
  ```
]
#enum.item(2)[Using the `:=` operator]
#cb("Using the := operator")[
  ```go
  name := "Himanshu"
  age := 20

  // or
  name, age := "Himanshu", 20
  ```
]

== String Interpolation
Similiar to C, we use format identifiers.
- string -> `%s`
- base-10 integer -> `%d`
- floating point integer -> `%f`
- booleans -> `%t`
- pointers -> `%p`
- Type of value -> `%T`

*NOTE*: Identifiers do not work with `Println`, `Printf` must be used.

#cbo()[
  ```go
  fmt.Printf("My name is %s", name)
  ```
][
  My name is Himanshu
]
