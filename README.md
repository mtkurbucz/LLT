# *LLT* R package
Linear Law-based Feature Space Transformation

## Description
The LLT package implements the Linear Law-based Feature Space Transformation (LLT) algorithm, which aims to facilitate uni- and multivariate time series classification tasks.

## Installation
```R
# install.packages("devtools")
# library(devtools)
install_github("mtkurbucz/LLT")
```

## Loading package
```R
library(LLT)
```

## Setting parameters
```R
path <- "./data"
test_ratio <-  0.30
dim <- 10
```

## Calculation
```R
train_test <- LLT::trainTest(path,test_ratio)
train_law <- LLT::trainLaw(path,train_test,dim)
result <- LLT::testTrans(path,train_test,train_law)
```
