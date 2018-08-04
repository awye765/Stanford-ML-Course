# Week 03-11 Logistic Regression - Regularization & Logistic Regression

## Regularization & Gradient Descent

Can regularize logistic regression in a similar way to linear regression.  

<p align = "center">
<img src=../Images\logregressionRegularization13.png width=100%>
</p>

The above takes our original cost function, see below:

<p align = "center">
<img src=../Images\logregressionRegularization14.png width=100%>
</p>

... and regularizes it by appending an additional term, <img src=../Images\logregressionRegularization16.png width=15%>, to the end:

<p align = "center">
<img src=../Images\logregressionRegularization15.png width=100%>
</p>

The second sum, <img src=../Images\logregressionRegularization18.png width=15%>, means to <b>explicitly exclude</b> the bias term θ<sub>0</sub>.  

In other words, the θ vector is indexed from 0 to n (holding n + 1 values, θ<sub>0</sub> through θ<sub>n</sub>), and this sum explicitly skips θ<sub>0</sub>, by running from 1 to n, skipping 0.  Thus when computing the equation we should continuously update the two following equations:

<p align = "center">
<img src=../Images\logregressionRegularization17.png width=100%>
</p>

## Advanced Optimization

Below is the necessary framework to compute a regularized cost function:

<p align = "center">
<img src=../Images\logregressionRegularization20.png width=100%>
</p>
