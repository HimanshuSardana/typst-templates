#set text(font: "Montserrat")

#show outline.entry.where(level: 1): it => [
  #text(fill: blue)[
    *#smallcaps(it.body())*
    #line(length: 100%, stroke: blue + 1pt)
  ]
]

#outline(
  title: [
    #place(top + center, float: true, scope: "parent")[
      #box(width: 100%, fill: blue, inset: (x: 10pt, y: 14pt), radius: 4pt)[
        #align(center)[
          #text(fill: white)[
            *Table of Contents*
          ]
        ]
      ]
    ]
    #v(-5mm)
  ],
  depth: 2,
)
#pagebreak()

= Assignment 1
== Question 1
== Question 2
== Question 3

= Assignment 2
== Question 1
== Question 2
== Question 3

