# Week 04-03 + 04 Neural Networks - Examples & Intuition - Parts 1 & 2

# Building Logic Gates with Neural Networks

## Why Demonstrate This?

Demonstrating the below helps build an intuitive understanding of how neural networks can be configured to replicate logic gates to perform increasingly complex decision making.

## Example 1: AND gate

#### Defining the Problem

We want to create an AND logic gate with a neural network:  

<p align = "center">
<img src=../Images\logicGateDiagramAND.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\ANDLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b>both inputs are equal to 1</b>.

#### A Neural Network Solution

<p align = "center">
<img src=../Images\neuralnetworks15.PNG width=100%>
</p>

To achieve this, we choose a negative value of x<sub>0</sub> that is greater than each of x<sub>1</sub> and x<sub>2</sub>.  

## Example 2: OR gate

#### Defining the Problem

We want to create an OR logic gate with a neural network:  

<p align = "center">
<img src=../Images\logicGateDiagramOR.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\ORLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b>one or both of the inputs are equal to 1</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\neuralnetworks16.PNG width=100%>
</p>

To achieve this, we choose a negative value of x<sub>0</sub> that is less than x<sub>1</sub> and x<sub>2</sub>.  

## Example 3: NOT gate

#### Defining the Problem

We want to create a NOT logic gate with a neural network.

<p align = "center">
<img src=../Images\logicGateDiagramNOT.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\NOTLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b>the input is equal to 0</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\neuralnetworks17.PNG width=100%>
</p>

To achieve this, we choose a positive value of x<sub>0</sub> that is less than x<sub>1</sub> but also negate x<sub>1</sub>.  

## Example 4: NAND gate

#### Defining the Problem

We want to create a NAND logic gate with a neural network.

<p align = "center">
<img src=../Images\logicGateDiagramNAND.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\NANDLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b>one or more of the inputs are equal to 0</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\neuralnetworks21.PNG width=100%>
</p>

To achieve this, we choose a positive value of x<sub>0</sub> that is greater than x<sub>1</sub> and x<sub>2</sub> and also negate x<sub>1</sub> and x<sub>2</sub>.  

## Example 5: NOR gate

#### Defining the Problem

We want to create a NOR logic gate with a neural network.

<p align = "center">
<img src=../Images\logicGateDiagramNOR.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\NORLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b> both inputs are equal to 0</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\neuralnetworks19.PNG width=100%>
</p>

To achieve this, we choose a positive value of x<sub>0</sub> that is less than x<sub>1</sub> and x<sub>2</sub> and also negate both of x<sub>1</sub> and x<sub>2</sub>.

# A Limitation of Neural Networks

The above examples are possible because it allows us to separate positive examples from negative examples linearly.  Unfortunately, for XOR and XNOR logic gates we need a non-linear decision boundary, which rules out further permutations on the above basic structures.  For example:

<p align = "center">
<img src=../Images\XORXNORproblem.GIF width=100%>
</p>

Taking each in turn:



Instead, we must combine these structures to create a more complex neural network with a hidden layer.

## Example 6: XOR gate

#### Defining the Problem

We want to create a XOR logic gate with a neural network.

<p align = "center">
<img src=../Images\logicGateDiagramXOR.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\XORLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b> one but not both inputs are equal to 1</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\XORneuralnetwork.PNG width=100%>
</p>

To solve for a XNOR neural network we must combine:

1. an NOR neural network (ORANGE); AND

2. a NAND neural network (BLUE).

## Example 7: XNOR gate

#### Defining the Problem

We want to create a XNOR logic gate with a neural network.

<p align = "center">
<img src=../Images\logicGateDiagramXNOR.PNG width=100%>
</p>

<p align = "center">
<img src=../Images\XNORLogicGate.PNG width=50%>
</p>

This is a function that will output 1 if and only if <b> both inputs are the same, i.e. both 1 or both 0</b>.

#### Demonstrating the Solution

<p align = "center">
<img src=../Images\XNORneuralnetwork.PNG width=100%>
</p>

To solve for a XNOR neural network we must combine:

1. an AND neural network (RED);

2. a NOR neural network (BLUE); AND

3. an OR neural network (GREEN).

#### Useful Resources

- http://www.ee.surrey.ac.uk/Projects/CAL/digital-logic/gatesfunc/index.html

- https://medium.com/@jayeshbahire/the-xor-problem-in-neural-networks-50006411840b (re the XOR and XNOR problems for neural networks re inability to linearly separate this types of classification)

- https://www.quora.com/How-can-we-design-a-neural-network-that-acts-as-an-XOR-gate
