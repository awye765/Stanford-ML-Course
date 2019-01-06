# Week 02-05 Multiple Linear Regression - Features & Polynomial Regression

## Math Refresh: What is a "Polynomial"

A polynomial is a function that has <b>one or more</b> terms.  Specifically, a polynomial can have:

1. <b>Constants</b>, e.g. 3, -20 or 1/2;

2. <b>Variables</b>, e.g. x and y; and

3. <b>Exponents</b>, e.g. the 2 in x<sup>2</sup> (but only 0, 1, 2, 3+),

that can be combined using <b>addition</b>, <b>subtraction</b> and <b>division</b> <u>EXCEPT</u> <b>division by a variable</b>

#### Things that <u>are</u> Polynomials

1. 3x

2. x − 2

3. −6y2 − ( 79)x

4. 3xyz + 3xy2z − 0.1xz − 200y + 0.5

5. 512v5 + 99w5

6. 5

7. <sup>x</sup>/<sub>2</sub> is allowed because you can divide by a constant

8. <sup>3x</sup>/<sub>8</sub>, also for same reason as (7)

9. √2 is allowed because it is a constant

#### Things that are <u>not</u> Polynomials

1. 3xy - 2 is not, because the exponent is "-2"

  (exponents can only be 0,1,2,... and negative exponents flip the base, e.g. x<sup>-2</sup> == <sup>1</sup>/<sub>x<sup>2</sup></sub>)

2. <sup>2</sup>/<sub>(x+2)</sub> is not, because dividing by a variable is not allowed

3. <sup>1</sup>/<sub>x</sub> is not either

4. √x is not, because the exponent is "½" (see fractional exponents)

## What is Polynomial Regression?

Polynomial Regression is an attempt to create a <b>polynomial function</b> that approximates a set of data points.

## When to use Polynomial Regression?

Polynomial Regression should be used when the data does not appear to have a straight line hypothesis, e.g.

<p align = "center">
<img src=../Images\polynomialregression1.png width=100%>
</p>

For instance:

<p align = "center">
<img src=../Images\polynomialregression2.png width=100%>
</p>

## How to use Polynomial Regression?

To map our old linear hypothesis and cost functions to a polynomial set of variables:

1. x<sub>1</sub> = x

2. x<sub>2</sub> = x<sup>2</sup>

3. x<sub>1</sub> = x<sup>3</sup>

## How does Polynomial Regression impact Feature Scaling?

Polynomial Regression makes Feature Scaling more important because it <b>exaggerates</b> features, e.g.

1. x<sub>1</sub> = x, then possible range for x = 1 - 1000

2. x<sub>2</sub> = x<sup>2</sup>, then possible range for x = 1 - 1,000,000

3. x<sub>1</sub> = x<sup>3</sup>, then possible range for x = 1 - 1,000,000,000

## Additional Resources

- https://www.mathsisfun.com/definitions/polynomial.html

- http://polynomialregression.drque.net/math.html
