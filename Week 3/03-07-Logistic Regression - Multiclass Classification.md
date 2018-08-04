# Week 03-07 Logistic Regression - Multiclass Classification

## What is multiclass classification?

This is logistic regression for classification of multiple classes, e.g. email foldering / tagging such as (1) Work, (2) Friends, (3) Family and (4) Hobby.

<p align = "center">
<img src=../Images\logregressionMulticlass20.png width=100%>
</p>

Multiclass Classification is also known as <b>one vs. all</b> or <b>one vs. rest</b>.

## How does it work?

Previously, we considered how logistic regression could be used for binary classification, i.e. two categories, represented as y = {0, 1}.

For multiclass classification we need to classify 2+ classes, represented as y = {0, 1, ... n}.  Since y = {0, 1, ... n}, we divide our problem into n + 1 (+1 because the index starts at 0) binary classification problems; in each one we predict the probability that "y" is a member of one class:

1. y ∈ {0, 1, ... n}

2. h<sub>θ</sub><sup>(0)</sup>(x) = P(y = 0 | x; θ).

3. h<sub>θ</sub><sup>(1)</sup>(x) = P(y = 1 | x; θ).

    ...

4. h<sub>θ</sub><sup>(n)</sup>(x) = P(y = n | x; θ).

5. Prediction = max (i) for h<sub>θ</sub><sup>(i)</sup>(x)

So for a 3 class multiclass classification we:

1. Turn training set into <b>three</b> separate binary classification models:

<p align = "center">
<img src=../Images\logregressionMulticlass22.png width=90%>
</p>

2. Which in formula are:

    h<sub>θ</sub><sup>(0)</sup>(x) = P(y = 0 | x; θ).

    h<sub>θ</sub><sup>(1)</sup>(x) = P(y = 1 | x; θ).

    h<sub>θ</sub><sup>(2)</sup>(x) = P(y = 2 | x; θ).

    h<sub>θ</sub><sup>(3)</sup>(x) = P(y = 3 | x; θ).

2. And train a logistic regression classifiers, h<sub>c</sub><sup>(i)</sup>(x) class i to predict the probability that y = i.

3. On a new input x, to make a prediction, pick the class i that maximises:

    max (i) for h<sub>θ</sub><sup>(i)</sup>(x)
