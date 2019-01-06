# run_analysis.R

This script was built as the final project in the "Getting and Cleaning Data"
course on Coursera. It was written to take the Human Activity Recognition Using
Smartphones Dataset by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, 
and Luca Oneto and output two smaller, tidy datasets. It downloads the dataset,
unzips it, recombines test and training data, extracts the mean and standard
deviation columns, gathers the variables together and outputs a tidy dataset and
a summary dataset, taking the average values as grouped by subject, activity and
variable.

## Getting Started

Run the script in your desired working directory. It will download, unzip and
work on the target data automatically. There is no error handling, as this is
meant to be a quick script for a course. If the download location changes, good
luck. There are two flags that can be changed in the file before running, LNT
and SEPA. The default is LNT = TRUE and SEPA = FALSE.
# LNT (Leave no trace)
  If TRUE, deletes all tibbles except two outputs: subxy and subyx_summ

# SEPA (Separate)
  If TRUE, separates the variable into variable, function, dimension. 
  Introduces NAs when dim doesn't exist. The assignment wasn't clear to me if 
  activity should be separated, as that would be a more tidy state.

### Prerequisites

The only package dependency is tidyverse.

## Authors

* **ABC** - *Complete work*

## License (from source dataset)

Use of this dataset in publications must be acknowledged by referencing the 
following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. 
Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass 
Hardware-Friendly Support Vector Machine. International Workshop of Ambient 
Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can 
be addressed to the authors or their institutions for its use or misuse. 
Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012. 

## Acknowledgments

* Created for the Getting and Cleaning Data course on Coursera.
