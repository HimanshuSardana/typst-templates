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

= Apply Functions

#v(1cm)

#question[
  Write a program that scrapes the titles and URLs of the top 10 articles from a news website of your choice. The program should output the results in a structured format (e.g., JSON or CSV).
]

#smallcaps()[*Solution*]
```python
import requests
from bs4 import BeautifulSoup

def scrape_top_articles(url):
    response = requests.get(url)
    soup = BeautifulSoup(response.content, 'html.parser')

    articles = []
    for item in soup.select('article')[:10]:  # Adjust the selector based on the website structure
        title = item.find('h2').get_text(strip=True)
        link = item.find('a')['href']
        articles.append({'title': title, 'url': link})

    return articles
```
