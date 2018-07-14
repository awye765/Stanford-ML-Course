# Week 02-04 Multiple Linear Regression - Gradient Descent in Practice - Learning Rate

## The Challenge

Choosing the optimal learning rate (α) is tricky.  To recap:

1. If α is too <b>small</b> = slow convergence.

2. If α is too <b>large</b> = may not decrease on every iteration, and therefore may never converge.

Gradient descent will descend upon convergence:

1. <b>Quickly</b> where the range of θ values is <b>small</b>; and

2. <b>Slowly</b> where the range of θ values is <b>large</b>.

## The Solution

### Debugging Gradient Descent.

1. Make a plot with number of iterations on the x-axis.

2. Now plot the cost function, J(θ) over the number of iterations of gradient descent.

3. If J(θ) ever increases, then you probably need to decrease α.

### Automatic Convergence Test

1. Declare convergence if <b>J(θ) decreases by less than E in one iteration</b>.

2. <b>E is some small value such as 10<sup>−3</sup></b>. However in practice it's difficult to choose this threshold value.

### Putting the above together:

#### Learning Rate <u>Correct</u>

<p align = "center">
<img src=Images\learningrate1.png width=100%>
</p>

#### Learning Rate <u>Incorrect</u>
<p align = "center">
<img src=Images\learningrate3.png width=100%>
</p>

#### Other Examples

<p align = "center">
<img src=Images\learningrate2.png width=100%>
</p>

## If α is very small

Then J(θ) will decrease on every iteration.
