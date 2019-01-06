# Week 02-02 Multiple Linear Regression - Gradient Descent Intro

## Combining Multivariable Linear Regression and Gradient Descent

Combining multivariable linear regression and gradient descent looks like this in terms of formula:

<p align = "center">
<img src=../Images\MVLR_Gradient_Descent.png width=100%>
</p>

What this means is:

1. The hypothesis function remains the same as discussed for multivariable linear regression, noting that x<sub>0</sub> has been added and is equal to 1.  

2. We can consider the list of parameters as an <b>n+1</b> dimensional vector, represented as θ.

3. Plugging the above into the cost function is why J(θ<sub>0</sub>, θ<sub>1</sub>, etc) is replaced by J(θ), i.e. the cost function, J, of the parameters vector θ.

4. Lastly, we apply gradient descent to J(θ), which means using gradient descent to simultaneously minimise the cost function for each value of θ from θ<sub>0</sub> to θ<sub>n</sub>:

<p align = "center">
<img src=../Images\MLVR_Gradient_Descent3.PNG width=90%>
</p>

5. And working that out, will looks like this:

<p align = "center">
<img src=../Images\MLVR_Gradient_Descent2.PNG width=90%>
</p>

6. Side by side, gradient descent with <b>one</b> variable vs. gradient descent with <b>1+</b> variables looks like this:

<p align = "center">
<img src=../Images\MLVR_Gradient_Descent4.PNG width=90%>
</p>
