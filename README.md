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


# Report: Semantic Network Design for Medieval Weaponry
## Structural Design and Abstraction

The semantic network was constructed using a hierarchical classification system, grouping items by shared physical properties and tactical functions. By defining nodes such as 'bladed_hand_weapon', the network utilises shared inheritance. Each class below this (for exmaple: 'sword' or 'dagger') automatically inherits base properties like 'has_part(blade)'. This reduces redundancy and follows the  taxonomical classification found in zoology. As noted by Campbell, Reece and Mitchell (2017), biological classification groups organisms based on shared ancestral traits.

However, a challenge emerged in this design regarding whether to use multiple inheritance. While a tree structure works for most weapons, certain items are not simple to categorise. A trebuchet functions both as a siege_weapon and a ranged_weapon.

The current structure uses a strict tree without multiple inheritence. It is noted that to fully capture the trebuchet, the tree would have to be modified allowing a single node to inherit properties from multiple parents. This highlights the difference between the simplicity of a tree and the enhanced representation allowed for by a Directed Acyclic Graph (DAG).

For the purposes of this project, the "Medieval Period" is defined styarting with the fall of the Roman Empire in 476 AD to the beginning of the Renaissance Period 1500 AD. This ensures that the knowledgebase remains historically factual.

The system relies on the Closed World Assumption (CWA), a fundamental tenet of Prolog. Under CWA, any statement that cannot be proven true within the knowledgebase is assumed to be false. For example, as has_a(sword, colour, pink) is not specifcally stated, and cannot be inherited from a parent, Prolog will conclude that this is False.

This assumption demands rigorous completeness; the accuracy of the system is entirely dependent on the quality of the input. However, it provides a clean mechanism for distinguishing plausible facts from merely possible ones. "Possible" refers to any logical property we might invent, whereas "plausible" refers to the subset of properties verified by historical evidence and stored as facts. The CWA ensures that our inference engine operates strictly within this verified, plausible reality, preventing the model from hallucinating or defaulting to ungrounded assumptions.
Conclusion

Designing this semantic network highlights the tension between formal logic and historical complexity. By carefully selecting our abstraction levels and strictly enforcing the CWA, we have created a robust, predictable system. Moving forward, transitioning to a graph-based structure will be necessary to resolve the multiple inheritance conflicts inherent in advanced military classification.

Ethical Considerations
While it is clear that there is nothing inherently malicious about using historic articles of warfare as an example, there are some ethical considerations regarding the use of a medieval weaponry dataset to study semantic networks and programming in prolog. Switching to non-violent objects can make the study of computer science feel more welcoming to those who might otherwise feel alienated or intimidated by this dataset.

Humans are able to understand the historical contect of this dataset, whereas AI systems do not have this distinction, and may struggle to give adequate weighting to non-agressive features. Furthermore, if the output of this exercise were to be fed into connectionist neural network models, there is a danger that the system may learn bias in the system, such as predicting or advocating violence based on properties such as 'causes_damage' (citation needed).



## References

Campbell, N.A., Reece, J.B. et al, (2005) Biology. 7th edn. Harlow: Pearson. (Available at: https://cssplatformbytha.com/wp-content/uploads/2024/10/Biology-by-Neil-A.-Campbell-Jane-B.-Reece-z-lib.org_.pdf)



https://resources.metmuseum.org/resources/metpublications/pdf/Arms_and_Armor_Permanent_Collection_The_Metropolitan_Museum_of_Art_Bulletin_v_49_no_1_Summer_1991.pdf



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




