#set text(font: "Montserrat")
#set par(justify: true)
#import "@preview/rose-pine:0.2.1": apply, rose-pine, rose-pine-dawn
#show: apply(variant: "rose-pine")
#show heading.where(level: 1): it => [
  #smallcaps(it.body)
]

#let question(no, body) = [
  #box(
    width: 100%,
    fill: rose-pine.muted.darken(57%),
    outset: 15%,
    inset: 10pt,
  )[
    #text(size: 12pt, fill: rose-pine.love)[*#smallcaps(no)*] \
    #body
  ]
]

#let solution(body) = [
  #box(width: 100%, outset: 15%, inset: 10pt)[
    #text(size: 12pt, fill: rose-pine.iris)[*#smallcaps("Solution")*] \
    #body
  ]
]

#question("Question 1")[Explain Linear Regression]
#solution()[
  Linear Regression is a statistical method used to model the relationship between a dependent variable and one or more independent variables by fitting a linear equation to observed data. The simplest form is Simple Linear Regression, which involves one independent variable. The equation can be represented as:
]
