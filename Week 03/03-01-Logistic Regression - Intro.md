# Week 03-01 Logistic Regression - Intro

### What is Logistic Regression?

Unlike linear regression, logistic regression does <b>not</b> try to output <b>a predicted value of a numeric + continuous variable</b> given a set of inputs. E.g.

- Student A is predicted to score 98% on an exam.

Instead, logistic regression outputs a <b>probability</b> that the given input <b>belongs to a certain class</b> (i.e. a <b>discrete + categorical</b> output).  E.g.

- Student A is predicted to "Pass" an exam.

The central premise of logistic regression is the assumption that your input space can be separated into two nice <b>"regions"</b>, one for each class.

For <b>2 dimensions</b> the "linear" descriptor denotes a straight line.  For <b>2+ dimensions</b> it's a plane.

### Why is Logistic Regression when it is a "Classification" algorithm?

Historical reasons more than anything!

#### Basic Mathematical Representation of Logistic Regression

For logistic regression, we are trying to predict a value, <b>y</b>, as taking on 2 values.  Mathematically we can represent this basic hypothesis thus:

- y ∈ {0, 1}

The 0 represents the "Negative Class" (e.g. benign tumour).  The 1 represents the "Positive Class" (e.g. malignant tumour).  Positive class usually denotes <b>presence</b> of something, whereas negative class usually denotes <b>absence</b> of something.

#### Diagrammatically vs. Linear regression

<p align = "center">
<img src=..Images\linreg1.png width=50%>
</p>

<p align = "center">
<img src=../Images\linreg2.png width=50%>
</p>

To translate multiple input features to a binary output, a <b>sigmoid</b> function is used:

<p align = "center">
<img src=../Images\sigmoid1.png width=50%>
</p>

### When to use Logistic Regression?

Logistic regression can be used to solve problems where the question is to predict the probability that based on inputs (X) that the output (Y) falls into a particular category or class, e.g. heads or tails.

### Why not use Linear Regression to predict categorical values?

#### Setting the Scene: Predicting Tumour Malignancy

Imagine we are building an ML application to predict whether a tumour is either:

(a) malignant;

OR

(b) benign.

#### Using Linear Regression to Predict Tumour Malignancy

Using Linear Regression:</b> using linear regression, per the below, we could create a threshold classifier at 0.5 as so:

(a) If h<sub>θ</sub>(x) ≥ 0.5, predict "y = 1", i.e. "Malignant";

OR

(b) If h<sub>θ</sub>(x) ≤ 0.5, predict "y = 1", i.e. "Benign".

On the above, that means everything to the right of the <b>pink</b> dot is "Malignant", and everything to the left is "Benign".

<p align = "center">
<img src=../Images\logregression2.png width=100%>
</p>

#### The Problem with using Linear Regression to predict tumour malignancy

If our dataset becomes more complicated and less clearly delineated, the straight line fit may become less accurate / reliable.  

Per the below, adding an outlier to the dataset (the 'X' on the right, separate from all others) adjusts the line of best fit drastically.  

Now everything to the right of the <b>blue</b> dot is "Malignant" and everything to the left is "Benign".  Clearly this seems wrong, given everything to the left of the <b>blue line</b> should be "Malignant" and everything to the right of it should be "Benign".

<p align = "center">
<img src=../Images\logregression1.png width=100%>
</p>

Hence, logistic regression is a solve for this type of challenge.

### How is Logistic Regression different to Linear Regression?

#### 1. Linear regression output as probabilities

To use linear regression to predict probabilities is mistaken as linear regression can output values that are:

(a) less than 1 (i.e. negative); or

(b) grater than 1,

whereas probability cannot - a value is either 0, 1 or something in between.

<p>
<img src=../Images\logregvslinreg.png width=100%>
</p>

Source: http://gerardnico.com/wiki/data_mining/simple_logistic_regression

#### 2. Outcome

In linear regression, the outcome (dependent variable) is <b>continuous</b>. It can have any one of an <b>infinite</b> number of possible values.

In logistic regression, the outcome (dependent variable) has only a <b>finite</b> number of possible values.

#### 3. The dependent variable

Logistic regression is used when the response variable is <b>categorical</b> in nature. For instance, yes/no, true/false, red/green/blue, 1st/2nd/3rd/4th, etc.

Linear regression is used when your response variable is <b>continuous</b>. For instance, weight, height, number of hours, etc.

#### 4. Equation

Linear regression gives an equation which is of the form Y = mX + C, means equation with degree 1.

However, logistic regression gives an equation which is of the form Y = eX + e-X

#### 5. Coefficient interpretation

In linear regression, the coefficient interpretation of independent variables are quite straightforward (i.e. holding all other variables constant, with a unit increase in this variable, the dependent variable is expected to increase/decrease by xxx).

However, in logistic regression, depends on the family (binomial, Poisson, etc.) and link (log, logit, inverse-log, etc.) you use, the interpretation is different.

#### 6. Error minimization technique

Linear regression uses ordinary least squares method to minimise the errors and arrive at a best possible fit, while logistic regression uses maximum likelihood method to arrive at the solution.

Linear regression is usually solved by minimizing the least squares error of the model to the data, therefore large errors are penalized <b>quadratically</b>.

Logistic regression is just the opposite. Using the logistic loss function causes large errors to be penalized to an <b>asymptotically constant</b>.

Consider linear regression on categorical {0, 1} outcomes to see why this is a problem. If your model predicts the outcome is 38, when the truth is 1, you've lost nothing. Linear regression would try to reduce that 38, logistic wouldn't (as much).

# Useful Resources

- https://medium.com/data-science-group-iitr/logistic-regression-simplified-9b4efe801389

- https://www.quora.com/Why-is-logistic-regression-considered-a-linear-model

- https://www.quora.com/Why-is-logistic-regression-called-regression-if-it-doesnt-model-continuous-outcomes

- https://towardsdatascience.com/the-logistic-regression-algorithm-75fe48e21cfa 
