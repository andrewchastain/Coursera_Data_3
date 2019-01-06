****
run_analysis.R Script for HAR Dataset (see below)
Version 1.0
****
ABC, 01/05/2019
****
This script was built as the final project in the "Getting and Cleaning Data"
course on Coursera. It was written to take the Human Activity Recognition Using
Smartphones Dataset by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, 
and Luca Oneto and output two smaller, tidy datasets.

The run_analysis.R script has two flags that are set internally, LNT and SEPA.
LNT stands for "leave no trace" and if TRUE will delete all of the R objects
generated in the course of the analysis. Set to FALSE if results from
intermediate steps are needed. SEPA denotes "separate" and if TRUE will break
the variable names into three columns, for variable, function (either mean or
std) and dimension (x, y ,z) if it exists.

The file outputs ./tidy/tidy1.rds and ./tidy/tidy2.rds and creates (in LNT form)
subyx and subyx_summ data.frames.
