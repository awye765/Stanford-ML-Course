# Week 01-03 Linear Regression: Parameter Learning

## What is parameter learning?

Parameter learning is the process by which a system learns the parameters (i.e. weights) necessary to optimise a cost function (i.e. the line of best fit that is best at predicting values).  

Once optimised we can say we have <b>converged</b> on the optimal result(s).

In formula, this objective looks like this:

- min J(θ<sub>0</sub>, θ<sub>1</sub>)

## What is gradient descent?

Gradient descent is a method to <i>learn</i> the parameters that optimise a cost function.

## What does gradient descent look like when plotted on a 3D graph?

Plotted in 3D, where θ<sub>0</sub>, θ<sub>1</sub> are the x and y axis and the cost function values are the z axis, the different values of each cost function (i.e. J(θ<sub>0</sub>, θ<sub>1</sub>)) for each combination of θ<sub>0</sub> and θ<sub>1</sub> optimised via gradient descent looks like this:

<p align = "center">
<img src=Images\Image[16].png width=50%>
</p>

## The formula for gradient descent

The formula for gradient descent is as follows:

<p align = "center">
<img src=Images\Image[17].png width=90%>
</p>

#### Notation and application explained
- θ<sub>j</sub> means the θ value of the corresponding J value for that index, e.g.

  - j = 0 means the exact value of θ<sub>0</sub>.  

  - j = 1 means the exact value of θ<sub>1</sub>.

- := means assignment.

- α (alpha) is a number called the <b>learning rate</b>.  It controls how big a step you take.  If α is large, you have an aggressive gradient descent.  If α is small you have less aggressive gradient descent.

<p align = "center">
<img src=Images\graddescentlargesmall.png width=80%>
</p>

- <img src=Images\Image[20].png width=10%> is a <b>derivative function</b>.

- a <b>derivative function</b> calculates the gradient of a straight line <b>tangent</b> adjacent to a point on a graph, e.g. the red line below is a <b>derivative function</b> of J(θ<sub>1</sub>):
<p align = "center">
<img src=Images\deriv.png width=50%>
</p>

- depending on the value of (θ<sub>1</sub>), the derivative function (i.e. slope of the tangent) will either be <b>positive</b> or <b>negative</b>, e.g. the <b>positive</b> gradient shown in the above graph.

- if the derivative function calculates a <b>positive</b> gradient then the values of θ<sub>0</sub> and θ<sub>1</sub> are <b>reduced</b> to slide down the slope backwards to minimise the value of J(θ<sub>0</sub>, θ<sub>1</sub>).

- if the derivative function calculates a <b>negative</b> gradient then the values of θ<sub>0</sub> and θ<sub>1</sub> are <b>increased</b> to slide down the slope forwards to minimise the value of  the value of J(θ<sub>0</sub>, θ<sub>1</sub>).

- this sliding down the slope for different θ<sub>1</sub> values can be visualised for J(θ<sub>1</sub>) (i.e. where θ<sub>0</sub> = 0) as follows:

  <p align = "center">
  <img src=Images\graddescent.png width=100%>
  </p>

#### Minimums and Maximums

- The <b>local minimum</b> is a point where the function evaluates to a <b>greater</b> value at every other point in a <i>neighhbourhood</i> around the local minimum.

- The <b>global minimum</b> is a point where the function evaluates to a <b>greater</b> value at every other point across the entire function.

- The <b>local maximum</b> is a point where the function evaluates to a <b>lower</b> value at every other point across the entire function.

- The <b>global maximum</b> is a point where the function evaluates to a <b>lower</b> value at every other point across the entire function.

- Visualised by example, these are as follows:

<p align = "center">
<img src=Images\maxmin.png width=80%>
</p>

#### How to use the formula correctly

<p align = "center">
<img src=Images\Image[17].png width=90%>
</p>

Ignoring the derivative function for now:

1. Calculate the right hand side of the formula (i.e. everything right of :=) for θ<sub>0</sub>. Assign that value to temp0.

2. Calculate the right hand side of the formula (i.e. everything right of :=) for θ<sub>1</sub>.  Assign that value to temp1.

3. Repeat steps (1) and (2), updating the value of θ<sub>0</sub> to temp0, and updating the value of θ<sub>1</sub> to temp1.

4. For instance:

<p align = "center">
<img src=Images\Capture.png width=90%>
</p>

5. Then the answer is:

<p align = "center">
<img src=Images\Answer.png width=50%>
</p>

## How to do gradient descent

1. Start with some initial guesses for θ<sub>0</sub>, θ<sub>1</sub>.

2. Use gradient descent formula (see above) with θ<sub>0</sub>, θ<sub>1</sub>, which:

    (a) calculates the <b>gradient</b> of a derivative function that touches the related cost function value (i.e. positive or negative gradient); and

    (b) either:

      (x) <b>reduces</b> the value of θ<sub>0</sub>, θ<sub>1</sub> (if the gradient is <b>positive</b>), sliding down the slope backwards; or

      (y) <b>increases</b> the value of  θ<sub>0</sub>, θ<sub>1</sub> (if the gradient is <b>negative</b>), sliding down the slope forwards.

3. Repeat steps (1) and (2) until the gradient of the derivative function of the cost function is 0.

4. As you approach the <b>local</b> minimum the derivative term gets smaller (i.e. because the gradient flattens out), so the updates to θ<sub>0</sub>, θ<sub>1</sub> become smaller even if α remains fixed.

5. In two dimensions, where J(θ<sub>1</sub>) (i.e. where θ<sub>0</sub> = 0), gradient descent looks like this depending on which value of θ<sub>1</sub> is chosen as the starting value:

      <p align = "center">
      <img src=Images\graddescent.png width=100%>
      </p>

      or in motion, something like this:

      <p align = "center">
      <img src=Images\1_ZmzSnV6xluGa42wtU7KYVA.gif width=100%>
      </p>


#### Useful Links

- https://medium.com/ai-society/hello-gradient-descent-ef74434bdfa5

- https://hackernoon.com/life-is-gradient-descent-880c60ac1be8

- https://storage.googleapis.com/supplemental_media/udacityu/315142919/Gradient%20Descent.pdf
