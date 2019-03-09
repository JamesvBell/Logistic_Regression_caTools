#Base R logistic Regression 

#in this plot we see that am is the type of transmission and it's either a 
#1 or 0. This tells us that we can use logistic regression
#if it was more than 2 categories, we want to use one hot encoding instead 
#of logistic regression
plot(x = mtcars$mpg, y = mtcars$am, xlab = "Fuel Efficiency (MPG)", 
     ylab = "Vehicle Transmission Type (0 = auto, 1 = Manual)")

#load library
install.packages("caTools")
library("caTools")

#give the model the label against which we want to predict
Label.train =  mtcars[, 9]

#give the model the label for the training data. Read [, -9] as we want the data 
#from mtcars  that we split into the training set on the previous  except 
#column 9 which is the am column in this example. 


#Below fails on data.test = test as error object 'test' not found
Data.train =  mtcars[, -9]

model = LogitBoost(Data.train, Label.train)
Data.test = test
Lab = predict(model, Data.test, type = "raw")
data.frame(row.names(test), test$mpg, test$am, Lab)
