# Week 02-07 Multiple Linear Regression - Noninvertibility

## The Issue of Noninvertibility

#### What does "noninvertible" mean in general?

Noninvertibility arises where a matrix does not have an inverse.

#### How does Noninvertibility arise re our Normal Equation?

Occasionally X<sup>T</sup>X may be <b>noninvertible</b>.  

If so, the common causes are usually:

- Redundant features, where two features are very closely related (i.e. they are linearly dependent); and / or

- Too many features (e.g. m ≤ n). In this case, delete some features or use "regularization" (to be explained in a later lesson).

## Solutions to Noninvertibility

Solutions to the above problems include deleting a feature that is linearly dependent with another or deleting one or more features when there are too many features.
