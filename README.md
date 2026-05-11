# cardiffmet-dat6002-artificial-intelligence
Third Year - Artificial Intelligence

# Task/Assessment brief:

In this assessment, you will apply symbolic and connectionist AI techniques to solve challenging computational problems. The assessment is divided into two parts: Part 1 focuses on applying symbolic AI, and Part 2 on connectionist AI.

## Part 1: Symbolic Methods
### Task 1: Semantic Network Design (15%, ~600 words equivalent)

Create a semantic network for the Medieval Weapons domain (https://www.medievalwarfare.info/weapons.htm), beginning with the overarching class “Weapon” and then defining successive subclasses that narrow toward specific medieval types such as Longswords, Crossbows, Spears, Maces, or Warhammers. 

The hierarchy should extend through about five levels, with each tier incorporating suitable properties, including primaryMaterial (such as iron, steel, or wood), weaponType (for example, ranged or melee), effectiveRange, averageWeight, eraUsed (such as the 12th century), and historicalOrigin (for instance, England or the Byzantine Empire). 

The network should conclude with at least one concrete instance of a selected weapon type, fully described in terms of these properties and showing how it inherits attributes from the higher classes.

### Task 2: Semantic Network Implementation (15%, ~600 words equivalent)
Implement the above Medieval Weapons semantic network in a programming language of your choice. Populate the knowledge base with sufficient facts and rules to enable reasoning.

Your system should be able to answer questions such as: “Is a crossbow a ranged weapon?” or “What is the effective range of a longbow?” Include a set of at least five representative queries and demonstrate the reasoning capability of your system.

Produce a concise report covering all aspects of your study. That is development of the semantic network and its implementation as a program, assumptions and research citations, and query results demonstrating reasoning capability.

## Part 2: Connectionist Methods

### Background and Dataset

In this part, you will work with the Bank Marketing Dataset, which includes client demographic information, details of bank contact interactions, and outcomes from previous marketing campaigns.

The dataset can be accessed from the UCI Machine Learning Repository: https://archive.ics.uci.edu/dataset/222/bank+marketing. 

Two dataset archives are provided, bank.zip and bank-additional.zip. For this assessment, you must use bank.zip, specifically the bank-full.csv file, which contains approximately 45,000 instances.

### A. Dataset Preparation (5% Marks, ~200 words equivalent)

Preprocess the dataset, including handling with missing values (if any), transforming the categorical features into numerical features, normalising these suitable for ANN training, and splitting the dataset into training and testing subsets.

### B. Building ANN from Scratch (25%, ~1000 words equivalent)

Construct a three-layer feedforward neural network consisting of N input neurons, 10 hidden neurons, and M output neuron(s). Determine the appropriate values of N and M based on the characteristics of the dataset (see Neural Network Training, Week 6). 

Choose an activation function and justify your choice. Implement and train the neural network using the Backpropagation algorithm from scratch (no external machine learning libraries). Use a programming language of your choice (e.g., Python, Java).

### C. Performance Evaluation (10%, ~400 words equivalent)
Evaluate the neural network using metrics such as accuracy, precision, recall, and F1-score. Provide a confusion matrix. Explain your observations and findings.

### D. ANN Implementation with Libraries (15%, ~600 words equivalent)
Use a machine learning library (e.g., Scikit-learn, Keras) to construct and train a multilayer feedforward neural network with the same dataset.

Compare its performance to the custom ANN model implemented earlier.

Discuss advantages and disadvantages of both approaches. 

### E. Parameter Tuning and Model Optimisation (15%, ~600 words equivalent)

Experiment with tuning parameters (e.g., learning rate, batch size), for example using GridsearchCV, to improve model performance. Document and discuss the impact of these changes.

Outline how the ANN could be optimised using Genetic Algorithms. Provide a high-level explanation supported by diagrams.

Produce a concise report covering all aspects of your study. That is data preparation, developing ANN, analysis, investigations, results, and discussion.

### Word count (or equivalent):
4000 words equivalent

This a reflection of the effort required for the assessment. Word counts will normally include any text, tables, calculations, figures, subtitles and citations. 

Reference lists and contents of appendices are excluded from the word count. 

Contents of appendices are not usually considered when determining your final assessment grade.

