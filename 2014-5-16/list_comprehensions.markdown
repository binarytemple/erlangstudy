List Comprehensions
-------------------

Filter
======

#### Ensure each value is greater than 3

    [X || X <- [1,2,a,3,4,b,5,6], X > 3].


#### Ensure each item is also an integer, and filter that they are greater than 3 

    [X || X <- [1,2,a,3,4,b,5,6], integer(X), X > 3].

(atoms cannot be added to an integer, but they can be used in numeric comparison)

Filter and Map
==============

#### Ensure each item is also an integer, and add 2 to it's value
    [X + 2  || X <-  [1,2,a,3,4,b,5,6], integer(X)].
