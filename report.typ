#import "@preview/showybox:2.0.4": showybox

#let theory(heading, content) = [
        #showybox(
                frame: (
                border-color: blue.darken(50%),
                title-color: blue.lighten(50%),
                body-color: blue.lighten(80%),
        ),
                title-style: (
                color: black,
                weight: "regular",
                align:left, 
        ),
                title: [*#heading*],
        )[#content]
]

#let formula(heading, content) = [
        #showybox(
                frame: (
                border-color: green.darken(50%),
                title-color: green.lighten(50%),
                body-color: green.lighten(80%),
        ),
                title-style: (
                color: black,
                weight: "regular",
                align:left, 
        ),
                title: [*#heading*],
        )[#content]
]

#let code(heading, content) = [
        #showybox(
                frame: (
                border-color: orange.darken(50%),
                title-color: orange.lighten(50%),
                body-color: orange.lighten(80%),
        ),
                title-style: (
                color: black,
                weight: "regular",
                align:left, 
        ),
                title: [*#heading*],
        )[#content]
]

#let titlepage(title, members, subject_name, subject_code, subgroup, teacher) = [
        #align(center+top)[
        #text(size: 16pt, weight: "bold")[A Project Report on],

        #text(size: 20pt, fill: blue.darken(10%),  weight: "bold")[*#title*]

        #text(size: 12pt)[for #subject_name (#subject_code) by]

        #table(
                        columns: 2,
                        stroke: none,
                        align: center,
                        [ #for (roll_no, name) in members {
                                text(fill: blue.darken(10%), weight: "black")[#name ]
                                text(fill: blue.darken(10%), weight: "black")[#roll_no \ ]
                                
                        }
                        ]
             )

        #text(size: 12pt, fill: blue.darken(10%), weight: "bold")[Subgroup #subgroup],

        #v(0.5cm)
        #text(size: 12pt, weight: "bold")[Submitted to],

        #text(size: 14pt, weight: "bold", fill: blue.darken(10%))[*#teacher*],
     ]

        #align(center + bottom)[
                #text(size: 14pt, weight: "bold")[
                        Department of Computer Science and Engineering
                        #v(-0.2cm)
                        Thapar Institute of Engineering and Technology
                        #v(-0.2cm)
                        (A DEEMED TO BE UNIVERSITY)
                        #v(-0.2cm)
                        Patiala, Punjab
                        #v(-0.2cm)
                        INDIA
                        #v(-0.2cm)
                        JAN-MAY 2025
             ],
     ]
]

