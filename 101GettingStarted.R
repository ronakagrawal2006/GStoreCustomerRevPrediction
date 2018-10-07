source("scripts/preprocessing.R")
library(tidyverse)
library(jsonlite)

df_train <- read.csv(file = "all/train.csv", header = TRUE, nrows = 2000)
test <- read.csv(file = "all/test.csv", header = TRUE, nrows = 2000)
tr_device <- flatcsv(df_train$device)
tr_geoNetwork <- flatcsv(df_train$geoNetwork)
tr_totals <- flatcsv(df_train$totals)
tr_trafficSource <- flatcsv(df_train$trafficSource)


te_device <- flatcsv(test$device)
te_geoNetwork <- flatcsv(test$geoNetwork)
te_totals <- flatcsv(test$totals)
te_trafficSource <- flatcsv(test$trafficSource)


setequal(names(tr_device), names(te_device))
setequal(names(tr_geoNetwork), names(te_geoNetwork))
setequal(names(tr_totals), names(te_totals))
setequal(names(tr_trafficSource), names(te_trafficSource))

#As expected, tr_totals and te_totals are different as the train set includes the target, transactionRevenue
names(tr_totals)
names(te_totals)
