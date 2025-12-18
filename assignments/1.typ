#let assignment_no = state("assignment_no", 1);
#show heading.where(level: 1): it => [
  #box(width: 100%, stroke: 1pt, height: 70pt)[
    #place(top + right, float: true, dy: 14mm, dx: -10mm)[
      #text(fill: gray.darken(30%), size: 16pt)[
        #smallcaps()[Assignment #assignment_no.get()]
      ]
    ]
    #place(bottom + right, float: true, dy: 2mm, dx: -5mm)[
      #box(fill: white, inset: (x: 10pt))[
        #text(weight: "bold", size: 24pt)[
          #smallcaps(it.body)
        ]
      ]
    ]
  ]
]

#let question(body) = [
  #box(width: 100%)[
    #body
  ]
]

= Linear Regression

#question("What is Linear Regression")

