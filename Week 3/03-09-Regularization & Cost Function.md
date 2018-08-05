# Week 03-09 Regularization & Cost Function

# How to use Regularization

If we have overfitting from our hypothesis function, we can reduce the weight of certain terms in our function by <b>increasing their cost</b>.

### Linear Regression: simple example - reducing the weight of x 2 features

Say we wanted to make the following function more quadratic:

θ<sub>0</sub> + θ<sub>1</sub>x + θ<sub>2</sub>x<sup>2</sup> + θ<sub>3</sub>x<sup>3</sup> + θ<sub>4</sub>x<sup>4</sup>

To do so, we'd want to eliminate the influence of θ<sub>3</sub>x<sup>3</sup> and θ<sub>4</sub>x<sup>4</sup> without removing these features or changing the form of the hypothesis.  This is made possible by instead <b>modifying the cost function</b>:

<p align = "center">
<img src=../Images\logregressionRegularization1.png width=100%>
</p>

We've added <b>two</b> extra terms to inflate the cost of θ<sub>3</sub> and θ<sub>4</sub>, i.e.

<p align = "center">
<img src=../Images\logregressionRegularization2.png width=30%>
</p>

In turn this causes the cost function to reduce the values of θ<sub>3</sub> and θ<sub>4</sub> to near zero, in order to mitigate the effect of the additional terms described above.

<p align = "center">
<img src=../Images\logregressionRegularization4.png width=100%>
</p>

### Linear Regression: more complex example - 10s of features

Suppose we have a dataset from which we wish to predict house prices:

1. Features: x<sub>1</sub>, x<sub>2</sub>, ...x<sub>100</sub>

2. parameters: θ<sub>0</sub>, θ<sub>1</sub>, θ<sub>2</sub>, ... θ<sub>100</sub>

Here we have 100 features.  Unlike in the first example, it's hard to simply pick one or more features to minimise to near zero.

To deal with this, we modify our cost function to include an <b>extra Regularization term</b> at the end like so:

<p align = "center">
<img src=../Images\logregressionRegularization5.png width=100%>
</p>

1. The <b>Regularization term</b> is the part in pink.  

2. Note that by convention for that term we sum from j<sub>1</sub> and not from j<sub>0</sub>, hence θ<sub>0</sub> is crossed out in the above diagram.  Note also the above diagram erroneously labels j as i in the pink notation.

### Lambda (λ) selection:

If λ is <b>too large</b>, our model may be underfit.  If λ is <b>too small</b>, our model my be overfit.  An <b>intermediate</b> value of λ will be "just right".

<p align = "center">
<img src=../Images\Regularization1.png width=100%>
</p>

Where it underfits, this will be because the value of λ has essentially remove all / almost all of the features, e.g.

<p align = "center">
<img src=../Images\logregressionRegularization6.png width=90%>
</p>
