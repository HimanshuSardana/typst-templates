#import "@preview/fletcher:0.5.8": *
#import "./temp2.typ": *
#import "@preview/showybox:2.0.4": *

#let subject_name = "Machine Learning"
#let author_name = "Himanshu Sardana"
#let assignment_no = "1"

#title_page(subject_name, assignment_no, author_name)

#pagebreak()
#toc()
#pagebreak()

#title("Assignment 1")
#question(
  "Explain how KNN algorithm works. What are the advantages and disadvantages of KNN?",
)
#solution([
  *K Nearest Neighbors (KNN)* is a simple, yet powerful, supervised machine learning algorithm used for classification and regression tasks. It works by finding the 'k' nearest data points in the feature space to a given query point and making predictions based on the majority class (for classification) or average value (for regression) of those neighbors.

  *Advantages of KNN:*
  + Simple and easy to implement.
  + No training phase, making it fast for small datasets.

  *Disadvantages of KNN:*
  + Computationally expensive for large datasets, as it requires calculating distances to all points.
  + Sensitive to irrelevant features and the choice of 'k'.
])

#question(
  "What is the difference between supervised and unsupervised learning? Provide examples of each.",
)
#solution([
  + *Supervised Learning* involves training a model on labeled data, where the input features and corresponding output labels are known. Examples include classification tasks like spam detection and regression tasks like predicting house prices.
  + *Unsupervised Learning* involves training a model on unlabeled data, where only input features are available. The model learns patterns or structures in the data without explicit labels. Examples include clustering tasks like customer segmentation and dimensionality reduction tasks like PCA.
])

