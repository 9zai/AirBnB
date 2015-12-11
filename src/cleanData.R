setwd("/Users/9zai/Desktop/competition/Airbnb/data")

library(ggplot2)
library(VIM)

train <- read.csv("train_users.csv",header = T)
test <- read.csv("test_users.csv",header = T)
train$id <- as.character(train$id)
test$date_first_booking <- NULL
train$date_first_booking <- NULL

test$country_destination <- "TEST"

full <- rbind(train,test)
full$id <- as.character(full$id)

test.full <- full
test.full$signup_flow <- NULL
test.full$gender <- as.character(test.full$gender)
test.full$gender[which(test.full$gender == '-unknown-')] <- 'NA'
test.full$gender[which(test.full$gender == 'OTHER')] <- 'NA'
test.full$gender <- factor(test.full$gender)
