## run_analysis.R, written 1/5/2019 by ABC for "Getting and Cleaning Data" 
## course on Coursera. This script takes the Human Activity Recognition dataset
## from the UCI Machine Learning Repository, combines the training and test sets
## and extracts the mean() and std() values from the analyzed data set.
#
## SETTINGS:
#  LNT (Leave no trace)
#   If TRUE, deletes all tibbles except two outputs: subxy and subyx_summ
#
#  SEPA (Separate)
#   If TRUE, separates the variable into variable, function, dimension. 
#   Introduces NAs when dim doesn't exist. The assignment wasn't clear to me if 
#   activity should be separated, as that would be a more tidy state.
#
LNT <- TRUE
SEPA <- FALSE

library(tidyverse)
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
              destfile = "./Dataset.zip", mode = "wb")
unzip("./Dataset.zip")
file.remove("Dataset.zip")
home.wd <- getwd()
setwd("./UCI HAR Dataset")

# Load X data fragments. Named x_total, but initially is just the test data
x_total <- read_table("./test/X_test.txt", col_names = FALSE)
x_train <- read_table("./train/x_train.txt", col_names = FALSE)
x_total <- rbind(x_total, x_train)
rm(x_train)

y_total <- read_table("./test/y_test.txt", col_names = FALSE)
y_train <- read_table("./train/y_train.txt", col_names = FALSE)
y_total <- rbind(y_total, y_train)
names(y_total) <- "activity"
rm(y_train)

subject_total <- read_table("./test/subject_test.txt", col_names = FALSE)
subject_train <- read_table("./train/subject_train.txt", col_names = FALSE)
subject_total <- rbind(subject_total, subject_train)
names(subject_total) <- "subject_code"
rm(subject_train)

# Pull in the feature list for col names in x_total
features <- read_table("./features.txt", col_names = FALSE)
features <- separate(features, 1, c("row","name"), sep = " ")
names(x_total) <- features$name

# Pull apart col names to extract columns with "mean" OR "std" in name 
features <- features %>%
    separate(name, into = c("source", "func", "dim"), sep = "-") %>%
    mutate(include = !is.na(func) & (func == "mean()" | func == "std()"))
x_total <- x_total[, features$include]

# Convert y_total (activity labels) to factors with proper names
y_total$activity <- as.factor(y_total$activity)
y_total <- mutate(y_total, activity = fct_recode(activity,
                                                 "Walking"            = "1",
                                                 "Walking Upstairs"   = "2",
                                                 "Walking Downstairs" = "3",
                                                 "Sitting"            = "4",
                                                 "Standing"           = "5",
                                                 "Laying"             = "6"
                                                 ))

# combine everything into a single set by cbinding subject number and activity
subyx <- cbind(subject_total, y_total, x_total)
subyx <- subyx %>%
    gather(key = "variable", value = "value", -(1:2))

if (SEPA == TRUE) {  # If TRUE, formats "variable" into three columns
        by_act_sub <- subyx %>% group_by(activity, subject_code, variable)
        subyx <- subyx %>%
        separate(variable,
                 into = c("variable", "function", "dimension"),
                 sep  = "-")
}

setwd(home.wd)
if (!dir.exists("./tidy")) {
    dir.create("./tidy")
}
write_rds(subyx, "./tidy/tidy1.rds")

# group by activity, subject_code and variable
if (SEPA == FALSE) {
    by_act_sub <- subyx %>% group_by(activity, subject_code, variable)
}

subyx_summ <- summarize(by_act_sub, average_val = mean(value))

if (SEPA == TRUE) {  # if TRUE, formats "variable" into three columns
    subyx_summ <- subyx_summ %>%
        separate(variable,
                 into = c("variable", "function", "dimension"),
                 sep  = "-")
}
write_rds(subyx_summ, "./tidy/tidy2.rds")

# Housecleaning
if (LNT == TRUE) {
    rm(features, subject_total, x_total, y_total, by_act_sub, home.wd, LNT,
       SEPA)
}
