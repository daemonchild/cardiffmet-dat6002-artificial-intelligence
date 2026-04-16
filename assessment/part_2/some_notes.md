# Notes for report:

Why use a Validation set instead of just the Test set?

If you use your Test set to decide when to stop training or what learning rate to use, you are technically "leaking" information. You might end up with a model that performs great on that specific Test set but fails in the real world. By using a Validation set, you keep the Test set completely "unseen" until the very final moment of your project.


Three Crucial "Scratch" Tips for your Assessment:

1. The "Sign" of your Update: In your _weight_bias_update, you are using:
self.weights_1 = self.weights_1 + (input_x_delta1 ...)
Normally, Gradient Descent subtracts the gradient. However, because you calculated error_output_layer as Target - Output (which is the negative gradient), using + is mathematically correct here. Just keep an eye on that!

2. Accuracy vs. Error:
Error (MAE) is great for the math, but your assessment likely wants to see Accuracy. You can add a quick method to calculate how many predictions were correct:


``` --- Confusion Matrix (Text Table) ---
                | Predicted No | Predicted Yes |
------------------------------------------------
      Actual No |         7937 |           13 |
     Actual Yes |         1090 |            2 |
------------------------------------------------
```

I was getting the above confusion matrix which means that:

You’ve just hit the most important lesson in classification: Accuracy is a liar.

If we look at your raw accuracy, it’s roughly 87% (7939/9042). On paper, that looks like an "B+." But looking at your Confusion Matrix, your model has a major problem called the Majority Class Bias.
The "Lazy" Model Problem

Because about 88% of your customers said "No" in the original dataset, your neural network has learned a "lazy" shortcut: "If I just say 'No' to everyone, I'll be right 88% of the time!"

Let's look at your Recall for people who actually said Yes:

    Total actual "Yes" customers: 1,092

    "Yes" customers you actually found (True Positives): 2

    Recall: 2/1092=0.18%

Your model is essentially invisible to the very people the bank wants to find. It caught 2 people and missed 1,090.
Why is this happening?

    Class Imbalance: Your "No" samples vastly outnumber your "Yes" samples. The loss function (Binary Cross-Entropy) is being "pulled" much harder by the "No" errors than the "Yes" errors.

    Learning Rate & Epochs: Your model might be stuck in a "local minimum" where it’s afraid to predict "Yes" because the "penalty" for being wrong (a False Positive) is outweighed by the sheer volume of "No" cases.

    Sigmoid Saturation: If your weights were initialized too large or your learning rate is too high, the output might be getting "stuck" near 0.

How to fix it (The "Scratch" Way)

Since you are building this yourself, you have two main levers to pull:
1. Adjust the Decision Threshold

Currently, you are likely using (output > 0.5). Because the model is so biased, its "Yes" probabilities might all be very low (e.g., 0.1 or 0.2).

    Try this: Change your prediction line to (output > 0.1) and see what happens to the Confusion Matrix. You will get more False Positives, but your True Positives will jump up.

2. Weighted Loss (The Pro Move)

You can modify your back_propagation or weight_bias_update to "punish" the model more when it misses a "Yes."

    In your code, when the target is 1 but the model predicts 0, multiply that specific gradient by 5 or 10. This forces the weights to care more about the minority class.

3. Oversampling (The Data Move)

Before converting to NumPy, you can duplicate the "Yes" rows in your training DataFrame until the counts are roughly equal. This is called ROS (Random Over-Sampling).

Would you like to try the "Threshold Adjustment" first? It's a one-line code change that will immediately show you if the model has actually learned anything about the "Yes" customers.

When you look at this graph, you will likely see a "Cross":

    As Threshold increases: Precision goes UP (when the model finally says "Yes," it is very certain), but Recall goes DOWN (it misses almost everyone).

    As Threshold decreases: Recall goes UP (you catch all the customers), but Precision crashes because you are calling everyone a "Yes."

The "Sweet Spot": In your report, you can point to the intersection of the Precision and Recall lines. This is often where the model is performing most fairly across both classes. Based on your previous confusion matrix, you'll likely find this "sweet spot" is much lower than 0.5 (probably around 0.12 to 0.18).