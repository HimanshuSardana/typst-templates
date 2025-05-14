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
