#let question(body) = [
  #box(width: 100%, inset: (y: 0pt), stroke: (
    left: 2pt + red,
    right: 1pt + red.lighten(80%),
    top: 1pt + red.lighten(80%),
    bottom: 1pt + red.lighten(80%),
  ))[
    #box(
      width: 100%,
      stroke: (left: 2pt + red),
      inset: (y: 7pt),
      fill: red.lighten(80%),
    )[#h(2mm) *Question*]
    #v(-2mm)
    #h(2mm)
    #body \
    #v(2mm)
  ]
]
