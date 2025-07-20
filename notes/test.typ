#import "./temp2.typ": *

#question()[
  Explain Linear Regression in simple terms.
]

#solution()[
  Linear regression is a method of modeling the relationship between a dependent variable and one or more independent variables. It is used to predict the value of the dependent variable based on the values of the independent variables.

  $ y = m x + b $
  Where $y$ is the dependent variable, $x$ is the independent variable, $m$ is the slope, and $b$ is the y-intercept.

  *Multiple Linear Regression*
  $ y = m_1 x_1 + m_2 x_2 + ... + m_n x_n + b $
  Where $y$ is the dependent variable, $x_1, x_2, ..., x_n$ are the independent variables, $m_1, m_2, ..., m_n$ are the slopes, and $b$ is the y-intercept.

  *Implementation*
  #block(width: 100%, radius: 8pt)[
    ```python
    def linear_regression(x, y):
        n = len(x)
        sum_x = sum(x)
        sum_y = sum(y)
        sum_xy = sum(x * y)
        sum_xx = sum(x ** 2)

        m = (n * sum_xy - sum_x * sum_y) / (n * sum_xx - sum_x ** 2)
        b = (sum_y - m * sum_x) / n

        return m, b
    ```
  ]
]

#question()[
  What is Lasso regression?
]

#solution()[
  Lasso regression is a method of modeling the relationship between a dependent variable and one or more independent variables. It is used to predict the value of the dependent variable based on the values of the independent variables.
  Lasso regression is a regularization technique that helps to reduce the complexity of the model and improve the generalization performance.
]
