library(rpart)

age_info <- read.csv("age_gender_bkts.csv",header = T)
age_info <- age_info[,-5]
age_model <- rpart(country_destination~age_bucket+gender,data = age_info)