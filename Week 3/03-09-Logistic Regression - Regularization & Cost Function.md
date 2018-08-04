# Week 03-09 Logistic Regression - Regularization & Cost Function

# How to use Regularization

If we have overfitting from our hypothesis function, we can reduce the weight that some of the terms in our function carry by <b>increasing their cost</b>.

### A simple example: reducing the weight of x 2 features

Say we wanted to make the following function more quadratic:

θ<sub>0</sub> + θ<sub>1</sub>x + θ<sub>2</sub>x<sup>2</sup> + θ<sub>3</sub>x<sup>3</sup> + θ<sub>4</sub>x<sup>4</sup>

To do so, we'd want to eliminate the influence of θ<sub>3</sub>x<sup>3</sup> and θ<sub>4</sub>x<sup>4</sup> without removing these features or changing the form of the hypothesis, which is possible by instead <b>modifying the cost function</b>:

<p align = "center">
<img src=../Images\logregressionRegularization1.png width=100%>
</p>

We've added <b>two</b> extra terms to inflate the cost of θ<sub>3</sub> and θ<sub>4</sub>, i.e.

<p align = "center">
<img src=../Images\logregressionRegularization2.png width=30%>
</p>

Now, in order to ensure the cost function gets close to zero, we have to reduce the values of θ<sub>3</sub> and θ<sub>4</sub> to near zero.  In turn this greatly reduces values of θ<sub>3</sub>x<sup>3</sup> and θ<sub>4</sub>x<sup>4</sup> in our hypothesis function.

<p align = "center">
<img src=../Images\logregressionRegularization4.png width=100%>
</p>

### A more complex example: house prices

Suppose we have a dataset from which we wish to predict house prices:

1. Features: x<sub>1</sub>, x<sub>2</sub>, ...x<sub>100</sub>

2. parameters: θ<sub>0</sub>, θ<sub>1</sub>, θ<sub>2</sub>, ... θ<sub>100</sub>

Here we have 100 features, so it's hard to simply pick one or more features to minimise to close to zero, unlike in the first example where we had only a few features so this choice is less oenrous.

To deal with this, we modify our cost function to include an <b>extra Regularization term</b> at the end like so:

<p align = "center">
<img src=../Images\logregressionRegularization5.png width=100%>
</p>

1. The <b>Regularization term</b> is the part in pink.  

2. Note that by convention for that term we sum from i<sub>1</sub> and not from i<sub>0</sub>, hence θ<sub>0</sub> is crossed out in the above diagram.

#### Lambda selection:

If λ (aka <b>"Lambda"</b>) is set to an extremely large value then the algorithm results in underfitting.  This is because the parameters are penalized very highly, with all parameters close to zero.  And when we do that, it's the same as getting rid of all / most of the parameters, which is same as fitting a flat horizontal line to the data, e.g.

<p align = "center">
<img src=../Images\logregressionRegularization6.png width=100%>
</p>
