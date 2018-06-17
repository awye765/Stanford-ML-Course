# Week 02-01 Multiple Linear Regression - Intro

### Terminology Issues:

Note week 2 refers to <b>"Multivariate Linear Regression"</b>, when technically the content describes <b>"Multiple Linear Regression"</b>.  See below for differences.  

Hence all notes are updated vs. course content to refer to "Multiple Linear Regression" rather than "Multivariate Linear Regression" unless clearly the latter and not the former concept.

## What is Multiple Linear Regression?

Linear regression with <u>multiple independent variables</u> = Multiple Linear Regression ("<b>MLR</b>").

### Difference between Multiple Linear Regression and Linear Regression?

In LR, <b>one</b> independent variable is used to predict the value of a <b>single</b> dependent variable.  

* E.g. square footage might be used to predict house price.

In multiple linear regression, <b>two or more</b> independent variables are used to predict the value of a <b>single</b> dependent variable.  

* E.g. square footage <u>and</u> distance from train station might be used to predict house price.

### Linear Regression, Multiple Linear Regression and Multivariate Linear Regression compared

| Name | Dep. Vars (y) | Ind. Vars (x) | Formula |
|------|---------------|---------------|---------|
| Linear Regression   | 1             | 1             | y = f(x)|
| Multiple Regression*    | 1             | 1+            | y = f(x<sub>1</sub>, x<sub>2</sub>,... x<sub>n</sub>) |
| Multivariate Linear Regression  | 1+            | 1+            | y<sub>1</sub>, y<sub>2</sub>,... y<sub>m</sub> = f(x<sub>1</sub>, x<sub>2</sub>,... x<sub>n</sub>)        

<sup>\*</sup>AKA Multivariable Regression

### When do you use Multiple Linear Regression?

You use MLR when you have <b>1+</b> independent variables necessary to predict 1 dependent variable.

## How to do MLR?

### Notation

The multivariable version of our LR function is as follows:

* m = number of output examples
* n = number of features from x<sub>1</sub> to x<sub>n</sub>
* x<sup>i</sup> = input(features) of the i<sup>th</sup> training example.
* x<sub>j</sub><sup>i</sup> = value of feature <i>j</i> in the i<sup>th</sup> training example.

#### Example:
<p align = "center">
<img src=Images\MLR_Notation.png width=100%>
</p>

##### n = 4
* x<sub>1</sub> = size
* x<sub>2</sub> = no. of bedrooms
* x<sub>3</sub> = no. of floors
* x<sub>4</sub> = age of home

##### x<sup>2</sup> = <img src=Images\vector.png width=20%>

##### x<sub>3</sub><sup>2</sup> = <img src=Images\vectorx2.png width=20%>

### Hypothesis

The multivariable linear regression hypothesis function is this:

h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub> x<sub>1</sub> + θ<sub>2</sub> x<sub>2</sub> + θ<sub>3</sub> x<sub>3</sub> + ... + θ<sub>n</sub> x<sub>n</sub>

Which can be <b>vectorised</b> using matrix multiplication to look like this:

<p align = "center">
<img src=Images\MLR.png width=100%>
</p>

#### How to vectorise the hypothesis

##### Step 1: Add constant to feature vector
For convenience, we add a <b>new</b> feature, x<sub>0</sub> = 1.  This means that:
1. For every example (<i>i</i>), you have an additional x<sub>0</sub> feature, which is a <b>constant</b>, i.e. 1;

2. The resulting feature vector is now <b>n+1</b>, in the sense that it includes all <b>n number of feature values + 1</b>; and

3. The feature vector is now <b>zero indexed</b> rather than 0 indexed.

##### Step 2: Parameter Vector
1. Because x<sub>0</sub> is equal to 1 and multiplied by θ<sub>0</sub>, they are both (n + 1) dimensional vectors.

##### Step 3: Multiplying θ<sub>0</sub> by x<sub>0</sub>

This transforms our equation:

h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub> x<sub>1</sub> + θ<sub>2</sub> x<sub>2</sub> + θ<sub>3</sub> x<sub>3</sub> + ... + θ<sub>n</sub> x<sub>n</sub>

into

h<sub>θ</sub>(x) = θ<sub>0</sub> <b>x<sub>0</sub></b> + θ<sub>1</sub> x<sub>1</sub> + θ<sub>2</sub> x<sub>2</sub> + θ<sub>3</sub> x<sub>3</sub> + ... + θ<sub>n</sub> x<sub>n</sub>

##### Step 4: Transposing

Which can be written as h<sub>θ</sub>(x) = θ<sup>T</sup>x.

This is because:

1. We can represent the values of x and θ as two separate <b>column</b> vectors as follows:

    <b> Column Vector for X</b>

    A zero indexed column vector of (n + 1) x 1 features, i.e. where there are (n + 1) rows and x 1 column (the +1 being the constant):

   <img src=Images\xvector.png width=50%>

   and

   <b> Column Vector for θ</b>

   A zero indexed column vector of (n + 1) x 1 parameters, i.e. where there are (n + 1) rows and x 1 column (the +1 being the constant):

   <img src=Images\thetavector.png width=50%>

3. So to multiply the transpose of θ (i.e. θ<sup>T</sup>) by x, we need to think back to our recap on Matrices, Vectors and associated operations.  

4. There we learnt that the number of columns of the matrix of parameters (θ) must match the number of rows of the vector (x).  By taking the <b>transpose</b> of θ (i.e. θ<sup>T</sup>) we end up with:

  θ<sup>T</sup> = [θ<sub>0</sub>, θ<sub>0</sub>, ... θ<sub>n</sub>]

  which is a 1 x (n + 1) matrix, i.e. x 1 row and (n + 1) columns, whereas before it was a (n + 1) x 1 matrix, i.e. (n + 1) rows and x 1 column.

5. Therefore, multiplying θ<sup>T</sup> by x (i.e. θ<sup>T</sup>x) is the same as:

    h<sub>θ</sub>(x) = θ<sub>0</sub> <b>x<sub>0</sub></b> + θ<sub>1</sub> x<sub>1</sub> + θ<sub>2</sub> x<sub>2</sub> + θ<sub>3</sub> x<sub>3</sub> + ... + θ<sub>n</sub> x<sub>n</sub>
