# Week 03-08 Regularization - Intro

## The Challenge

Sometimes the model we create will either <b>underfit</b> or <b>overfit</b> our data, which in both cases impedes the efficiency and accuracy of the model.

## What are overfitting and underfitting?

1. <b>Overfitting</b> means the model matches the training data so closely that the model fails to create new predictions on new data.  It is accurate on the training set but doesn't perform well on new data.

2. <b>Underfitting</b> means the model does not even capture the training dataset, so is unlikely to accurately predict values for new data.

### Linear Regression Example

<p align = "center">
<img src=../Images\logregressionOverfitting2.png width=100%>
</p>

1. Leftmost figure shows fitting a y = θ<sub>0</sub> + θ<sub>1</sub>x hypothesis to the dataset.  This underfits because the data doesn't really lie on a straight line.

2. Middle figure shows fitting a y = θ<sub>0</sub> + θ<sub>1</sub>x + θ<sub>2</sub>x<sup>2</sup> hypothesis to the datatset (i.e. we added another feature, x<sup>2</sup>).  This seems to fit most of the data points well.

3. Rightmost figure shows fitting a 5<sup>th</sup> order polynomial, y=∑<sup>5</sup><sub>j = 0</sub> θ<sub>j</sub>x<sup>j</sup>.  This fits the dataset perfectly, however, it is likely to fail at predicting new values.

As such, we can say (1) is <b>underfitted</b> in the sense the model cannot capture the underlying trend of the data, and (3) is <b>overfitted</b> because it matches the training data so closely it is unlikely to predict values based on new data.

### Logistic Regression Example

<p align = "center">
<img src=../Images\logregressionOverfitting3.png width=100%>
</p>

1. Leftmost underfits.

2. Middle best fits.

3. Rightmost overfits.


## What impact do overfitting and underfitting have?

<b>Underfitting</b> means the model will neither model the training data nor generalise to new data.

<b>Overfitting</b> means the model will model too closely the training data and therefore not generalise well to new data.

## When does overfitting vs. underfitting occur?

Underfitting (aka <b>high bias</b>) occurs when the hypothesis is <b>too simple</b> or uses <b>too few features</b>.  

E.g. in the above, the leftmost models are biased in the sense that for the linear regression the model has a strong preconception that the relationship between housing prices is going to vary linearly, and for the logistic regression model that the decision boundary is a negative gradient straight line.

Overfitting (aka <b>high variance</b>) occurs when the hypothesis fits available data well but <b>does not generalise to predict new data</b>.  Usually caused by an <b>overcomplicated function</b> with <b>too many features</b>.

## How can we avoid overfitting and underfitting?

Answer: <b>Regularization</b>.

Essentially we are aiming to find the optimal number of features and keep those features regularized.

Specifically, to avoid overfitting we must:

1. <b>Reduce</b> the number of features by:

    (a) Manually selecting which features to keep

    OR

    (b) Using a model selection algorithm (studied later in the course).

2. Use <b>Regularization</b> techniques to keep all the features, but <b>reduce the magnitude of parameters θ<sub>j</sub></b> (note: Regularization works well when we have a lot of slightly useful features).
