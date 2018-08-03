# Week 03-06 Logistic Regression - Advanced Optimization for Logistic Regression

## Alternatives to Gradient descent

Gradient Descent for Logistic Regression does not scale particularly well in terms of efficiency.  Instead, other approaches exist which are optimized for scalable machine learning.  These include:

1. Conjugate Gradient descent

2. Broyden-Fletcher-Goldfarb-Shanno algorithm ("<b>BFGS</b>")

3. Limited Memory BFGS algorithm ("<b>L-BFGS</b>")


|<b>Advantages</b> | <b>Disadvantages</b>|
|------------------|---------------------|
|  No need to manually pick | More complex
| | Often faster than Gradient descent

Octave and other ML libraries provide these optimisation algorithms.

## In Octave

In Octave we need a function that evaluates the following two functions for a given input value of θ:

J(θ), i.e. the `jVal` argument in the below code

and

<img src=../Images\logregressionGradientDescent19.png width=10%>, i.e. the `gradient` argument in the below code.

Together this looks like this:

<p align = "center">
<img src=../Images\logregressionGradientDescent17.png width=100%>
</p>

<p align = "center">
<img src=../Images\logregressionGradientDescent18.png width=100%>
</p>

Octave comes with the `finmunc()` optimisation algorithm with the `optimset()` function that creates an object containing the options we want to send to `finmunc()`:

    options = optimset('GradObj', 'on', 'MaxIter', 100);
    initialTheta = zeros(2,1);
        [optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);

In the above, we give to the function `fminunc()` our cost function, our initial vector of theta values, and the "options" object that we created beforehand.
