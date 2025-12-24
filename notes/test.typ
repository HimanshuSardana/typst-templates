#set page(margin: (x: 20mm, y: 15mm))
#set text(font: "Iosevka NF", weight: "light", size: 10pt)
#set par(justify: true)

#show strong: it => [
  #text(weight: "bold")[\*#it.body\*]
]

#show heading.where(level: 1): it => [#h(-5mm) #text(
    weight: "bold",
    fill: gray,
  )[\#] #text(
    weight: "black",
    font: "JetBrains Mono",
    it.body,
  ) \ #v(-2mm)]

#show heading.where(level: 2): it => [#h(-6.7mm) #text(
    weight: "bold",
    fill: gray,
  )[\#\#] #text(
    weight: "bold",
    font: "JetBrains Mono",
    it.body,
  ) \ #v(-2mm)]

#let cb(title, body) = [
  #box(width: 100%, fill: gray.lighten(85%), inset: 8pt)[
    #set text(font: "Iosevka NF")
    #text(size: 8pt, weight: "bold", fill: gray)[#title]
    #v(-1mm)
    #body
  ]
]

#let question(body) = [
  #box(width: 100%, stroke: 0.3pt, inset: 8pt)[
    *Question* \
    #body
  ]
]

= Data Science EST
== ggplot2
ggplot2 (*grammar of graphics*) is a data visualization package for the R programming language. It provides a powerful and flexible framework for creating complex and aesthetically pleasing visualizations by layering different components such as data, aesthetics, geometries, and statistical transformations.

#cb("Loading ggplot2", [
  #text()[```R
  library(ggplot2)
  ```]
])

== Introduction
*ggplot2* builds plots using a _layered_ approach, the various layers are:
+ Data: The dataset to be visualized.
+ Aesthetics: Mappings between data variables and visual properties (e.g., x and y axes, colors, sizes).
+ Geometries: The visual representation of the data (e.g., points, lines, bars).

== Basic Plot
To create a basic scatter plot using *ggplot2*, you can use the following code:
#cb("Basic Scatter Plot", [
  #text()[```R
  ggplot(data = mtcars, aes(x = wt, y = mpg)) +
    geom_point()
  ```]
])

This code creates a scatter plot of the `mtcars` dataset, mapping the weight (`wt`) to the x-axis and miles per gallon (`mpg`) to the y-axis.

`geom_point()` adds points to the plot, representing individual data points.

The other common geometries include:
+ `geom_line()`: For line plots.
+ `geom_bar()`: For bar charts.
+ `geom_histogram()`: For histograms.
+ `geom_boxplot()`: For box plots.

== Customization
Its possible to add various customizations to the plots, such as titles, labels, themes, and colors. For example:
#cb("Customized Scatter Plot", [
  #text()[```R
  ggplot(data = mtcars, aes(x = wt, y = mpg, color = factor(cyl))) +
    geom_point(size = 3) +
    labs(title = "Scatter Plot of MPG vs Weight",
         x = "Weight (1000 lbs)",
         y = "Miles per Gallon",
         color = "Cylinders") +
    theme_minimal()
  ```]
])

This code adds color to the points based on the number of cylinders (`cyl`), customizes the point size, and adds labels and a minimal theme to the plot.

#cb("Grouping by Colors")[
  ```R
  color = factor(cyl)
  ```
]

This maps the `cyl` variable to different colors in the plot, allowing for easy differentiation between groups based on the number of cylinders in the cars.

For example, assume the `cyl` variable has three unique values: 4, 6, and 8. The points representing cars with 4 cylinders will be colored differently from those with 6 or 8 cylinders, making it easier to visualize how the number of cylinders relates to the weight and miles per gallon of the cars in the dataset.
