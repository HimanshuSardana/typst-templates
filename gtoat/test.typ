#set page(margin: 0pt)
#set text(font: "Montserrat")
#let chapter_no = state("chapter_no", 1)

#show heading.where(level: 1): it => [
  #block(width: 100%, fill: blue.lighten(70%), inset: (x: 30pt, y: 20pt))[
    #v(25mm)
    #place()[
      #v(-8mm)
      #h(5mm)
      #box(width: auto, fill: blue, inset: 30pt)[
        #align(center + horizon)[
          #text(size: 35pt, fill: white)[
            #chapter_no.get().
          ]
        ]
      ]
    ]

    #block()[
      #h(43mm)
      #text(size: 30pt)[
        #smallcaps()[
          #it.body
        ]
      ]

    ]
  ]
  #chapter_no.update(chapter_no.get() + 1)
]
= Assignment

#v(10mm)
#box(width: 100%, inset: 30pt, fill: blue)[
  #set text(fill: white)
  #text(weight: "bold")[
    Q1: Write a program to calculate the sum of two numbers.
  ]
]
#v(-5mm)
#box(width: 100%, inset: 30pt, fill: blue.lighten(80%))[
  #v(-3mm)
  #text(fill: blue)[
    #smallcaps()[*Solution*]
  ]

  ```python
  def sum_two_numbers(a, b):
      return a + b
  ```
]

#box(width: 100%, inset: 30pt)[
  #v(-8mm)
  #text(fill: blue)[
    #smallcaps()[*Output*]
  ]
]
