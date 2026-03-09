# cardiffmet-dat6002-artificial-intelligence
Third Year - Artificial Intelligence
# Medieval Weapons
Create network, based on research.
will need references for domain research (3 sources minimum).
5 layrs of abstraction minimum.
Report shoudl be about a page, showing why choices were made, and why abstraction choices were chosen... and demoing the system.
Abstraction choices due to prperties being common --> actually becomes a node

Draw a table for the semantic network by level.
Level, Node, Properties, Parent
Cannot have the same propeties twice on a node?

Define medieval period... therefore exceptions..

Discuss ethics briefly...shoudl we study thias stuff? weapons are bad, right?
Historical facts.
What other knowledge base cold eb used for this task?

mention close world assumptions.
use word: plausible over possible.   possible is less certain than plausible.


Mention deductive, inductive and abducttive..
Ded and Ind --> monotonic
abductive --> non-monotonic. (discuss these concepts too)



Things to add --> ask about era, ask about weights... 


# Connectionist Methods

Sort and work on the dataset. --> numerical data only! 
normalise the dataset to avoid large values
Write our own libraries... pandas and numpy ok, nbut not scikitlearn

Build network
Determine the number of input neurons from the number of features in input dataset
multilayer perceptron...
1 x in -> 1 x hidden -> 1 x output

Justify why we choose the metrics we chose for evaluation of the NN
Justify why chose the particular activation function etc etc... design choices.

sigmoid function may not find the global minimum... may descend into the local minimum
bi-polar sigmoid function

**should try sveeral, preferably three or four different: sigmoid, bp-sigmoid,. relu, tanh, etc etc)
** need to create measures to ensure that we are comparing the output - fitness function.
Build a class that can provide several. :-)

- early stopping.
- dynamic alpha which increases over time
- memory of previous best try, based on fitting function? (advanced version!)

vanishing and exploding gradient



Some good stuff for the report in the slides!

alpha 0.01 to 0.02 (learning rate)
use transpose of the weights 
cols x rows size for matrix
dot product.


simple perceptron can solve ve linearly separable problems (and or or)
cannot solve non-linear prblems like Xor


activiation function u >= Z is a step function

for nonlinear functions we need a derivative function.\

"fully connected network" --> every output to every input on the next layer.
feed forward only connected to the next layer - not each other

MLP -- feedforward with one or more hidden layers

loss is needed over simple error... loss is a function of error.
MSE - mean square error
1/n (y'-y)^2.   or   absolute error |y'-y|

raw error is no good becauser the errors could cancel out when averaged --> end up with zero error!
error is used, but not directly.
loss function is needed.

the bigger the weight, the more that previous neuron contributed to the error.
error x weight = weighted error


cross-entropy-loss - classifications
mse - for binary output




