#import "@preview/showybox:2.0.4": showybox

#let starting_ques_no = state("qno", 1)

// ====================
// MACROS
// ====================
#let question(body) = context [
  #showybox(
    frame: (
      border-color: blue,
      title-color: blue,
      body-color: white,
    ),
    title-style: (
      color: white,
      weight: "bold",
      align: left,
      boxed-style: (
        radius: 4pt,
      ),
    ),
    title: [#smallcaps()[*Question #starting_ques_no.get()*]],
  )[#body]
  #starting_ques_no.update(qno => qno + 1)
]
#let theory(title, body) = context [
  #showybox(
    frame: (
      border-color: orange,
      title-color: orange,
      body-color: white,
    ),
    title-style: (
      color: white,
      weight: "bold",
      align: left,
      // boxed-style: (
      //   radius: 4pt,
      // ),
    ),
    title: [#smallcaps()[#title]],
  )[#body]
]

#let solution(sol) = [
  #smallcaps()[*Solution*] \
  #text()[#sol]
]

// EDIT BELOW THIS LINE
#theory(
  [
    Linear Regression
  ],
  [
    *Linear regression* is a statistical method used to model the relationship between a dependent variable and one or more independent variables. It assumes that the relationship can be approximated by a linear function, which can be expressed in the form of an equation. The goal is to find the best-fitting line (or hyperplane in higher dimensions) that minimizes the difference between the observed values and the values predicted by the model.
    $ y = m x + b $
    where:
    - $y$ is the dependent variable (the outcome we want to predict),
    - $x$ is the independent variable (the input feature),
    - $m$ is the slope of the line,
    - $b$ is the y-intercept (the value of $y$ when $x = 0$).
    #line(length: 100%, stroke: 0.3pt)
    #text(size: 10pt)[*Implementation*]
    #v(-2mm)
    ```python
    import numpy as np
    from sklearn.linear_model import LinearRegression
    from sklearn.model_selection import train_test_split

    # Sample data
    X = np.array([[1], [2], [3], [4], [5]])
    ```
  ],
)
#question([
  Given the data points, fit a linear regression model and predict the value for $x = 6$.
  ```python
  y = np.array([2, 3, 5, 7, 11])
  ```
  - Use `train_test_split` to split the data into training and testing sets.
  - Fit the model using the training set.
  - Predict the value for $x = 6$ using the fitted model.
])
