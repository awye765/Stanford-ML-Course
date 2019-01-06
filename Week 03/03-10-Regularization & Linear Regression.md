# Week 03-10 Regularization & Linear Regression

## Regularization & Gradient Descent

<p align = "center">
<img src=../Images\logregressionRegularization8.png width=100%>
</p>

Explanation:

1. We only penalise θ<sub>1</sub> to θ<sub>n</sub>, i.e. we leave the formula for θ<sub>0</sub> untouched.  This is the bit circled blue in the above.

2. Instead, we alter the gradient descent formula for θ<sub>1</sub> to θ<sub>n</sub>.

3. The formula for updating θ<sub>1</sub> to θ<sub>n</sub> can be simplified as indicated by this part:

<p align = "center">
<img src=../Images\logregressionRegularization9.png width=70%>
</p>

4. The effect of this part is to shrink θ<sub>j</sub> smaller:

<p align = "center">
<img src=../Images\logregressionRegularization10.png width=15%>
</p>

## Regularization & Normal Equation

To apply Regularization to the normal equation we use the same equation as the original except we add another term inside the parentheses:

<p align = "center">
<img src=../Images\logregressionRegularization12.png width=70%>
</p>

1. L is a matrix with 0 at the top left and 1's down the diagonal, with 0's everywhere else.  

2. The L matrix should have dimension (n + 1) x (n + 1).  Intuitively, this is the <b>identity</b> matrix (though we are not including x<sub>0</sub>), multiplied by a single real number, λ.

<p align = "center">
<img src=../Images\logregressionRegularization11.png width=80%>
</p>

Recall that if m < n, then X<sup>T</sup>X is <b>non-invertible</b>.  However, when we add the term λ.L, then X<sup>T</sup>X + λ.L <b>becomes invertible</b>.
