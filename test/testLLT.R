
### ### ### ### ###
path <- "./data"
test_ratio <-  0.30
dim <- 5
### ### ### ### ###

pkgs <- c("rstudioapi","devtools")
if(length(pkgs <- setdiff(pkgs, rownames(installed.packages())))) install.packages(pkgs)
rm(pkgs)
library(rstudioapi)
library(devtools)

pkg <- c("LLT")
if(length(pkg <- setdiff(pkg, rownames(installed.packages())))) install_github("mtkurbucz/LLT")
rm(pkg)
library("LLT")

setwd(dirname(getActiveDocumentContext()$path))
setwd("..")

train_test <- trainTest(path,test_ratio)
train_law <- trainLaw(path,train_test,dim)
result <- testTrans(path,train_test,train_law)
