# Week 03-04 Logistic Regression - Cost Function

## The Issue

We cannot use the same cost function that we use for linear regression because the Logistic Function will cause the output to be wavy, causing many local optima. In other words, it will not be a convex function.

Instead, our cost function for logistic regression looks like:

<p align = "center">
<img src=../Images\logregressionCostFunction11.png width=100%>
</p>

## Cost Function When y = 1

When y = 1, we get the following plot for J(θ) vs. h<sub>θ</sub>(x):

<p align = "left">
<img src=../Images\logregressionCostFunction12.png width=60%>
</p>

If our correct answer is y = 1, then the cost function will be 1 if our hypothesis also outputs 1.  If our hypothesis approaches 0, then the cost function will approach infinit (i.e. left side of the graph, heading up the y axis to infinity).

## Cost Function When y = 0
Similarly, when y = 0, we get the following plot for J(θ) vs. h<sub>θ</sub>(x):

<p align = "left">
<img src=../Images\logregressionCostFunction13.png width=60%>
</p>

If our correct answer is y = 0, then the cost function will be 0 if our hypothesis also outputs 0.  If our hypothesis approaches 1, then the cost function will approach infinity (i.e. right side of the graph, heading up the y axis to infinity).

## Examples

1. If h<sub>θ</sub>(x) = y, then for <b>both</b>:

    y = 0

    AND

    y = 1

    cost(h<sub>θ</sub>(x), y) = 0.

2. If y = 0, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 1.

3. If y = 1, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 0.

4. Regardless of whether y = 0 or y = 1, if h<sub>θ</sub>(x) = 0.5, then cost(h<sub>θ</sub>(x), y) > 0.  This is because, if y = 0, the cost function = -log(h(x)) = - log(0.5). And, if y = 1, the cost function = -log(1-h(x)) = -log(1-0.5) = -log(0.5). Thus in either situation, the cost function will equal to -log(0.5), which is <b>positive</b>.
