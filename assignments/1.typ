#let assignment_no = state("assignment_no", 1);
#show raw.where(block: true): it => [
  #set text(font: "Iosevka NF")
  #box(width: 100%, fill: gray.lighten(90%), inset: 8pt)[
    #it
  ]
]
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
  #box(width: 100%, stroke: 1pt, inset: (x: 10pt, y: 10pt))[
    #place(top + left, float: true, dy: -6mm, scope: "parent")[
      #box(fill: white, inset: (x: 8pt, y: 4pt))[
        #text(weight: "bold")[
          #smallcaps()[Question 1]
        ]
      ]
    ]
    #v(-10mm)
    #set text(size: 10pt)
    #body
  ]
]

#place(center + horizon)[
  #text(size: 36pt, weight: "black")[
    #smallcaps()[Microprocessor-based \ Systems Design]
  ]
  #grid(columns: 2, column-gutter: 1em, row-gutter: 1em, align: left)[Nitish][*10230239*][Angad Dhawan][*10230240*][Arnav Goyal][*102303242*][Harith Khanna][*102303243*][Himanshu Sardana][*102303244*]
]

#pagebreak()
#outline()
#pagebreak()

= Web Scraping

#question()[
  Scrape the titles of the top 5 trending repositories on GitHub using Python and the BeautifulSoup library.
]

#smallcaps()[*Solution*]
```python
import requests
from bs4 import BeautifulSoup

BASE_URL = "https://github.com/trending"

```
