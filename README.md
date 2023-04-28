# *LLT* R package
### for Linear Law-based Feature Space Transformation

<hr>

## Description
The LLT package implements the Linear Law-based Feature Space Transformation (LLT) algorithm, which aims to facilitate uni- and multivariate time series classification tasks. More information can be found at: Kurbucz, M. T., Pósfay, P., & Jakovác, A. (2023). LLT: An R package for Linear Law-based Feature Space Transformation. <i>arXiv preprint</i> arXiv:2304.14211.

<hr>

## Usage

### Installation
```R
# install.packages("devtools")
# library(devtools)
install_github("mtkurbucz/LLT")
```

### Loading package
```R
library(LLT)
```

### Setting parameters
```R
path <- "./data"
test_ratio <-  0.30
dim <- 10
```

### Calculation
```R
train_test <- LLT::trainTest(path,test_ratio)
train_law <- LLT::trainLaw(path,train_test,dim)
result <- LLT::testTrans(path,train_test,train_law)
```

<hr>

## Citation request

Please reference as:
<ul>
  <li>Kurbucz, M. T., Pósfay, P., & Jakovác, A. (2023). LLT: An R package for Linear Law-based Feature Space Transformation. <i>arXiv preprint</i> arXiv:2304.14211.
  <li>Kurbucz, M. T., Pósfay, P., & Jakovác, A. (2022). Facilitating time series classification by linear law-based feature space transformation. <i>Scientific Reports</i>, 12(1), 18026.</li>
  <li>Jakovác, A., Kurbucz, M. T., & Pósfay, P. (2022). Reconstruction of observed mechanical motions with artificial intelligence tools. <i>New Journal of Physics</i>, 24(7), 073021.</li>
</ul>

<hr>

## Sample dataset

The *data* folder contains a sample dataset that was prepared based on the synthetic dataset called BME of Joseph Fourier University. It is publicly available in the UCR Time Series Classification Archive (Hoang Anh Dau, Eamonn Keogh, Kaveh Kamgar, Chin-Chia Michael Yeh, Yan Zhu, Shaghayegh Gharghabi , Chotirat Ann Ratanamahatana, Yanping Chen, Bing Hu, Nurjahan Begum, Anthony Bagnall , Abdullah Mueen, Gustavo Batista, & Hexagon-ML (2019). *The UCR Time Series Classification Archive*. URL https://www.cs.ucr.edu/~eamonn/time_series_data_2018/).
