---
title: Swarm Optimised Robust Target Search Over Land
author: Noah Syrkis
documentclass: article
geometry: margin=3cm
fontsize: 12pt
date: \today
linestretch: 1.5
---

# Abstract

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nis
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nis
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae nis^[The code for this report is available at
[https://github.com/syrkis/sortsol](https://github.com/syrkis/sortsol).].



# Introduction

This is a report on the implementation of a swarm search and rescue algorithm.
The algorithm is implemented in Python and uses the differential programming library `JAX` by @frostig2018 for automatic differentiation and GPU acceleration. Optimization is done using evolutionary strategies from `evosax` by @lange2022.
The algorithm is tested on a simulated environments created using `Brax` by @freeman2021
a differentiable physics engine built on JAX.

# Background

Differential programming is a technique for computing gradients of functions that are implemented as computer programs.
It is used in machine learning to compute gradients of loss functions with respect to model parameters.
The most common method for computing gradients is backpropagation, which is used in neural networks.
Backpropagation is an application of the chain rule of calculus to compute the gradient of a loss function with respect to the parameters of a neural network.
Backpropagation is implemented as a series of matrix multiplications and is therefore very efficient on GPUs.
However, backpropagation is limited to neural networks and cannot be used to compute gradients of arbitrary programs.
Differential programming is a more general technique that can be used to compute gradients of arbitrary programs.
It is implemented as a series of matrix multiplications and is therefore very efficient on GPUs.
Differential programming is implemented in the JAX library.

## Swarm Search and Rescue

Swarm search and rescue is a technique for searching for a target in a large area.
It is inspired by the behaviour of ants and other social insects.
The idea is that a swarm of agents can search an area more efficiently than a single agent.
The swarm is composed of a number of agents that are able to communicate with each other.
Each agent has a sensor that can detect the target.
The agents are able to communicate with each other and share information about the location of the target.
The agents are able to move around the environment and search for the target.
The agents are able to communicate with each other and share information about the location of the target.
The agents are able to move around the environment and search for the target.
The agents are able to communicate with each other and share information about the location of the target.
The agents are able to move around the environment and search for the target.

## Evolutionary Strategies

Evolutionary strategies are a class of algorithms that use a population of candidate solutions to solve a problem.
The population is initialized with random solutions and then iteratively improved by applying a selection operator and a mutation operator.
The selection operator selects the best solutions from the population and the mutation operator mutates the selected solutions.
The selection operator is usually implemented as a tournament selection operator.
The mutation operator is usually implemented as a Gaussian mutation operator.
The selection operator is usually implemented as a tournament selection operator.
The mutation operator is usually implemented as a Gaussian mutation operator.
The selection operator is usually implemented as a tournament selection operator.
The mutation operator is usually implemented as a Gaussian mutation operator.

## JAX

JAX is a library for automatic differentiation and GPU acceleration.
It is built on top of the XLA compiler and is able to compile Python code to XLA code.
It is able to compile Python code to XLA code and run it on a GPU.
It is able to compile Python code to XLA code and run it on a GPU.
It is able to compile Python code to XLA code and run it on a GPU.


## Brax

Brax is a differentiable physics engine built on JAX.
It is able to simulate rigid body dynamics and collisions.
It is able to simulate rigid body dynamics and collisions.
It is able to simulate rigid body dynamics and collisions.


# Implementation

## Swarm Search and Rescue

The swarm search and rescue algorithm is implemented in Python using the JAX library.
The algorithm is implemented as a class that takes a number of parameters as input.

## Environment

The environment is implemented in Python using the Brax library.
The environment is implemented as a class that takes a number of parameters as input.

## Algorithm

The algorithm is implemented in Python using the evosax library.
The algorithm is implemented as a class that takes a number of parameters as input.

# Results

# Conclusion

# References

<div id="refs"></div>
