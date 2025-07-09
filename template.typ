// ============================
// GLOBAL SETTINGS
// ============================
#let subject = "Machine Learning"
#let author = "Himanshu Sardana"
#let assignment_no = "1"

#let starting_ques_no = state("qno", 1)

// ============================
// MACROS
// ============================
#let question(body) = context [
  #let words = body.split().len()
  #let size = measure([
    #text(size: 10pt, weight: "regular")[#body]
  ])
  #let number_of_lines = calc.div-euclid(size.width / 1pt, 410) + 1
  #box(width: 100%, stroke: 1pt + blue, inset: 10pt, radius: 4pt)[
    #v(3mm)
    #par(justify: true)[#text(size: 10pt, weight: "regular")[#body]]
  ]
  // only time linear regression was useful lol
  #let dy = -2.0 * number_of_lines - 7.0
  #v((dy) * size.height)
  #h(3mm)
  #box(radius: 1mm, fill: blue, inset: 8pt)[#text(
      fill: white,
      size: 10pt,
    )[#smallcaps()[*Question* *#starting_ques_no.get()*]]]
  #v((-dy / 2) * size.height)
  #h(0mm)
  #starting_ques_no.update(qno => qno + 1)
]

#let question2(body) = context [
  #let styled = block[
    #box(width: 100%)[
      #body
    ]
  ]

  #let single_line = [
    #text(weight: "regular")[Hello]
  ]

  #let ht = measure(styled).height
  #let line_height = measure(single_line).height
  #let lines = calc.div-euclid(ht / 1pt, line_height / 1pt)

  #box(width: 100%, stroke: 1pt + blue, inset: 10pt, radius: 4pt)[
    #styled
    \n
    Height: #ht
    \n
    Number of lines: #lines
  ]

]

#let solution(sol) = [
  #smallcaps()[*Solution*] \
  #text()[#sol]
]
#let heading(body, text_size: 20pt) = [
  = #text(size: text_size)[#smallcaps()[#body]]
]
// ============================
#outline()
#pagebreak()
// ACTUAL DOCUMENT STARTS

#question(
  "What is Machine Learning? Explain the types of Machine Learning with examples.",
)
#v(-7mm)
#solution([
  #lorem(50)
])
