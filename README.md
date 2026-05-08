# cardiffmet-dat6002-artificial-intelligence
Third Year - Artificial Intelligence
# Medieval Weapons


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
Justify and explain the choce of normlisation etc.

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



data split into three parts: train, validation and test (folds)
80% training/val, 20% testing

epochs - too many = overfit, too few = underfitting
see slides

va;idation stage is used to modify hyper parameters NOT model parameters
records a 'running average' - cooling factor/patience (this avoids effects of noise)
---> gives early stopping point


assessment dataset - which features are we going to use?
Feature extraction: 
- encode (one-hot) categorical data
- then normalise (0.00 to 1.00) (-1 to +1 bipolar data)
- min-max-scaler. (write your own for assessment - see the slides for forumla)
- (value - min) / (max - value)
- can use numpy

** if we do, or do not, do validation --> explain rationale for choice

Build the confusion matrix manually in code

Calculate accuracy - see slide
Accuracy can be misleading if the dataset is not balanced. If it is skewed, it can be a poor measure.
The domain in which we are operating shows which output is more important -- FN for covid 19 detection
WHat is the important measure in the dataset in the assessment? Better to not give a loan, than risk the default? Maybe! (Citation?)

Calculate precision -- used in fault critical situations

Calcuate recall - when is recall more imoportant? information retrieval situations - look this up and comment.

Calculate F-Score.  a better choice when the dataset is imbalanced 

Calculate AUC maybe? definitely research as he didn't go into it.


Insufficient data leads to an underfitting models, so...
K-Fold... 5-Fold or 10-Fold common
F1 to F5... use one fold for validation, the rest for training. Swap which one. each fold (n-1) times for training and ONCE for validation.
(Grid search-CV uses this).



REad the docs for scikit learn to understand and note on the defaults that are in use for each layer. eg ourput later uses a differnet activastion function than te hidden layers.

Make saure everything is the same for the comparison between the two.
You can also compare different artcitectures when using thw scikit learn librarym,, this would be extra marks.

Need to discuss why did or didn't use sgd or other optimisers.

adamax might be useful as a large dataset (45K).
see slides






Task/Assessment brief:


In this assessment, you will apply symbolic and connectionist AI techniques to solve challenging computational problems. The assessment is divided into two parts: Part 1 focuses on applying symbolic AI, and Part 2 on connectionist AI.
Part 1: Symbolic Methods
Task 1: Semantic Network Design (15%, ~600 words equivalent)
Create a semantic network for the Medieval Weapons domain (https://www.medievalwarfare.info/weapons.htm), beginning with the overarching class “Weapon” and then defining successive subclasses that narrow toward specific medieval types such as Longswords, Crossbows, Spears, Maces, or Warhammers. The hierarchy should extend through about five levels, with each tier incorporating suitable properties, including primaryMaterial (such as iron, steel, or wood), weaponType (for example, ranged or melee), effectiveRange, averageWeight, eraUsed (such as the 12th century), and historicalOrigin (for instance, England or the Byzantine Empire). The network should conclude with at least one concrete instance of a selected weapon type, fully described in terms of these properties and showing how it inherits attributes from the higher classes.
Task 2: Sematic Network Implementation (15%, ~600 words equivalent)
Implement the above Medieval Weapons semantic network in a programming language of your choice. Populate the knowledge base with sufficient facts and rules to enable reasoning.
Your system should be able to answer questions such as: “Is a crossbow a ranged weapon?” or “What is the effective range of a longbow?” Include a set of at least five representative queries and demonstrate the reasoning capability of your system.
 Produce a concise report covering all aspects of your study. That is development of the semantic network and its implementation as a program, assumptions and research citations, and query results demonstrating reasoning capability.
Part 2: Connectionist Methods
Background and Dataset
In this part, you will work with the Bank Marketing Dataset, which includes client demographic information, details of bank contact interactions, and outcomes from previous marketing campaigns.
The dataset can be accessed from the UCI Machine Learning Repository: https://archive.ics.uci.edu/dataset/222/bank+marketing. Two dataset archives are provided, bank.zip and bank-additional.zip. For this assessment, you must use bank.zip, specifically the bank-full.csv file, which contains approximately 45,000 instances.
A. Dataset Preparation (5% Marks, ~200 words equivalent)
Preprocess the dataset, including handling with missing values (if any), transforming the categorical features into numerical features, normalising these suitable for ANN training, and splitting the dataset into training and testing subsets.
B. Building ANN from Scratch (25%, ~1000 words equivalent)
Construct a three-layer feedforward neural network consisting of N input neurons, 10 hidden neurons, and M output neuron(s). Determine the appropriate values of N and M based on the characteristics of the dataset (see Neural Network Training, Week 6). Choose an activation function and justify your choice. Implement and train the neural network using the Backpropagation algorithm from scratch (no external machine learning libraries). Use a programming language of your choice (e.g., Python, Java).
C. Performance Evaluation (10%, ~400 words equivalent)
    • Evaluate the neural network using metrics such as accuracy, precision, recall, and F1-score. Provide a confusion matrix. Explain your observations and findings.
D. ANN Implementation with Libraries (15%, ~600 words equivalent)
    • Use a machine learning library (e.g., Scikit-learn, Keras) to construct and train a multilayer feedforward neural network with the same dataset.
    • Compare its performance to the custom ANN model implemented earlier.
    • Discuss advantages and disadvantages of both approaches. 
E. Parameter Tuning and Model Optimisation (15%, ~600 words equivalent)
    • Experiment with tuning parameters (e.g., learning rate, batch size), for example using GridsearchCV, to improve model performance. Document and discuss the impact of these changes.
    • Outline how the ANN could be optimised using Genetic Algorithms. Provide a high-level explanation supported by diagrams.
 Produce a concise report covering all aspects of your study. That is data preparation, developing ANN, analysis, investigations, results, and discussion.
Word count (or equivalent):
4000 words equivalent
This a reflection of the effort required for the assessment. Word counts will normally include any text, tables, calculations, figures, subtitles and citations. Reference lists and contents of appendices are excluded from the word count. Contents of appendices are not usually considered when determining your final assessment grade.

