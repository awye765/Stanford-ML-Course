# Week 03-01 Logistic Regression - Decision Boundary

## The Issue

When trying to predict y = 1 or 0, we need to determine a <b>decision boundary</b> to delineate between the two classifications.  E.g.

1. h<sub>θ</sub>(x) ≥ 0.5 predict y = 1.

2. h<sub>θ</sub>(x) < 0.5 predict y = 0.

## The Solution: Decision boundary

#### How is the decision boundary determined?

<p align = "left">
<img src=../Images\logregression7.png width=100%>
</p>

Explanation:

1. g(z) ≥ 0.5 whenever z ≥ 0.

2. g(z) < 0.5 whenever z < 0.

2. z represents θ<sup>T</sup>x, and g(z) is our representation of the sigmoid function for logistic regression.

3. Therefore, if h<sub>θ</sub>(x) = g(θ<sup>T</sup>x).

    a. g(θ<sup>T</sup>x) is ≥ 0.5 whenever θ<sup>T</sup>x ≥ 0.

    (i.e. re (1) - (3), see also <b>pink</b> highlighted regions on the sigmoid graph)

    b. g(θ<sup>T</sup>x) is < 0.5 whenever θ<sup>T</sup>x < 0.

    (i.e. <b>red</b> highlighted regions on the sigmoid graph)

5. We can then label the output data as follows:

    a. Predict "y = 1" if h<sub>θ</sub>(x) ≥ 0.5

    (which is same as saying predict "y = 1" when g(θ<sup>T</sup>x) ≥ 0.5, which is also same as saying predict "y = 1" when θ<sup>T</sup>x ≥ 0)

    OR

    b. Predict "y = 0" if h<sub>θ</sub>(x) < 0.5

    (which is same as saying predict "y = 0" when g(θ<sup>T</sup>x) < 0.5, which is also same as saying predict "y = 1" when θ<sup>T</sup>x < 0)


6.  Per the below, the decision boundary (<b>pink</b> diagonal line on the graph sloping left to right) occurs when h<sub>θ</sub>(x) = 0.5, which is when x<sub>1</sub> + x<sub>2</sub> = 3.  

<p align = "center">
<img src=../Images\logregression8.png width=90%>
</p>

7.  The decision boundary is a <b>property</b> of the hypothesis, including the parameters and <b>not</b> the dataset.

8. <b>Example:</b> a logistic regression with two features, x<sub>1</sub> and x<sub>2</sub>.  Suppose θ<sub>0</sub> = 5, θ<sub>1</sub> = -1, θ<sub>2</sub> = 0, so that h<sub>θ</sub>(x) = g(5 - x<sub>1</sub>).  Therefore:

    a. h<sub>θ</sub>(x) = g(θ<sub>0</sub> + θ<sub>1</sub>x<sub>1</sub> + θ<sub>2</sub>x<sub>2</sub>)

    b. h<sub>θ</sub>(x) = g(5 - x<sub>1</sub>)

    c. predict "y = 1" if 5 - x<sub>1</sub> ≥ 0

    d. predict "y = 1" if x<sub>1</sub> ≥ 0

    e. predict "y = 0" if x<sub>1</sub> < 0

    <p align = "left">
    <img src=../Images\logregression9.png width=30%>
    </p>

#### Non-Linear Decision Boundaries

<p align = "center">
<img src=../Images\logregression10.png width=100%>
</p>
