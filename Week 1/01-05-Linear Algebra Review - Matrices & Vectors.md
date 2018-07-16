# Week 01-05 Linear Algebra Review: Matrices & Vectors

## Matrices

#### Notation

1. Matrices are described by their dimensions: number of rows x number of columns, i.e. R<sup>[rows x columns]</sup>.

2. R<sup>4 x 2</sup> means a matrix with x 4 rows and x 2 columns.

3. Matrix elements are identified like this: A<sub>(i, j)</sub>, where:

  (a) i = the i<sup>th</sup> <b>row</b>; and

  (b) j = the j<sup>th</sup> <b>column</b>.

  e.g. the below, which is an R<sup>4 x 2</sup> matrix:

  <p align = "center">
  <img src=../Images\matrix1.png width=100%>
  </p>

4. Matrices are a way to organise, index and access data.  

5. Matrices usually denoted by an <b>uppercase</b> letter like in the above image.

## Vectors

#### Notation

1. A vector is an n x 1 matrix, i.e. one column but n number of rows.

2. Vector elements are identified like this: v<sub>(i)</sub>, where i = the i<sup>th</sup> <b>row</b>.

3. Some vectors are <b>1-indexed</b> (i.e. index starts at 1), but others are <b>0-indexed</b> (i.e. index starts at 0).

4. Vectors usually denoted by an <b>lowercase</b> letter.

## Scalars

If an object is described as a <b>scalar</b> this means it is a <b>single</b> object, neither a vector or a matrix.

## Addition

Can only add matrices of the <b>same</b> dimensions, like so:

<p align = "center">
<img src=../Images\image[3].png width=100%>
</p>

## Scalar Multiplication

Multiplying a matrix by a scalar (i.e. real number) means multiplying each element in the matrix by that scalar, like so:

<p align = "center">
<img src=../Images\orderofops.png width=100%>
</p>

## Order of Operations

1. Multiplication
2. Division
3. Addition
4. Subtraction

<p align = "center">
<img src=../Images\image[4].png width=80%>
</p>

## Matrix x Vector Multiplication

To multiply a matrix by a vector, the <b>number of columns</b> of the matrix (n) must match the <b>number of rows</b> of the vector</b>, e.g.

<p align = "center">
<img src=../Images\matrixbyvector.png width=80%>
</p>

The resulting vector will have the same number of rows as the matrix.

A worked example:

<p align = "center">
<img src=../Images\multiplyingmatrices.png width=80%>
</p>

## Matrix x Vector Multiplication - Linear Regression

A neat trick with linear regression: <b>prediction = Data Matrix x parameters</b>, e.g.

<p align = "center">
<img src=../Images\Image[7].png width=80%>
</p>

So in the above, the extra columns with the 1s is added to generate the θ<sub>0</sub> values.  More computationally efficient than using lots of for loops.

## Matrix x. Matrix Multiplication

To multiply a matrix by a matrix, the <b>number of columns</b> of matrix 1 must match <b>the number of rows</b> of matrix 2, e.g.

<p align = "center">
<img src=../Images\matrixbymatrix2.png width=80%>
</p>

Essentially, you end up breaking matrix 2 into multiple vectors and multiplying matrix 1 by each such vector, then combining the results back into a matrix.

A worked example:

<p align = "center">
<img src=../Images\matrixbymatrix.png width=80%>
</p>

## Matrix x. Matrix Multiplication - Linear regression

We can use matrix x matrix multiplication to apply multiple hypotheses to the same data to generate multiple predictions simultaneously.  

We can do this by having:

1. The data in Matrix 1; and

2. Each set of parameters in separate matrices.

A worked example:

<p align = "center">
<img src=../Images\matrixbymatrixlr.png width=80%>
</p>

## Matrix Multiplication Properties

#### Commutativity

1. When working with raw numbers/scalars multiplication is commutative, e.g.

  3 x 5 == 5 x 3

2. This is not true for matrix, e.g.

  A x B != B x A


3. Matrix multiplication is <b>not</b> commutative

#### Associativity

1. When working with chained multiplications, for numbers, multiplication is associative, e.g.

  3 x 5 x 2 == 3 x (5 x 2) == (3 x 5) x 2

2. Matrix multiplication <b>is</b> associative, e.g.

  A x (B x C) == (A x B) x C

#### Identity Matrix

1 is the identity for any scalar number, e.g. 1 x z = z.  In matrices, an identity matrix is a matrix that has 1s going diagonally from top left to bottom right, with 0s everywhere else.

Any matrix A which can be multiplied by an identity matrix, returns matrix A.

## Inverse Operations

Each number has an <b>inverse</b>.  This is the number you multiply by to get the identity element.  

E.g. if the number is X, then to find the identity element you multiple by x<sup>1/x</sup>.  

A Worked example:

1. If x = 3.

2. The identity inverse number is <sup>1</sup>/<sub>3</sub> because 3 x <sup>1</sup>/<sub>3</sub> = 1

For real numbers, <b>not everything has an inverse</b>, e.g. 0 does not have an inverse number.

The inverse of a matrix can be found, typically easiest using computer software:

<p align = "center">
<img src=../Images\inversematrix1.png width=80%>
</p>

## Transpose Operations

This is how you transpose an n x m matrix into an m x n matrix while keeping the same values, i.e. swap rows and columns.  

The transpose of a matrix is expressed A<sup>T</sup>.

#### How you do it

1. Take first row of A, which becomes 1st column of B.

2. Take second row of A, which becomes 2nd column of B.

A worked example:

<p align = "center">
<img src=../Images\matrixtranspose.png width=80%>
</p>

## Dividing

We don't divide matrices, instead we do it this way:

  A/B = A × (1/B) = A × B-1, where B-1 means the "inverse" of B.

In other words, we <b>multiply by an inverse</b>.

## Useful Links

- https://www.mathsisfun.com/algebra/systems-linear-equations.html

- https://www.mathsisfun.com/algebra/linear-equations.html

- https://www.mathsisfun.com/algebra/matrix-introduction.html
