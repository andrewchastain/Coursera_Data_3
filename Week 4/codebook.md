# Codebook for run_analysis.R

## Output variables

### subxy / tidy1.rds
This object/output file is 679734 observations of 4 variables. The variables are
given below.

* subject_code - (numeric) Number from 1-30 used to indicate the person 
  performing the action.
  
* activity - (factor) Name of activity being performed. Six levels are:
  * Walking
  * Walking Upstairs
  * Walking Downstairs
  * Sitting
  * Standing
  * Laying

* variable - (character) Name of the measurement performed, of the format 
{measurement}-{function}-{dimension} where function is mean() or std() and
dimension is X, Y or Z, as appropriate. The possible values are:
  * tBodyAcc-mean()-X
  * tBodyAcc-mean()-Y
  * tBodyAcc-mean()-Z
  * tBodyAcc-std()-X
  * tBodyAcc-std()-Y
  * tBodyAcc-std()-Z
  * tGravityAcc-mean()-X
  * tGravityAcc-mean()-Y
  * tGravityAcc-mean()-Z
  * tGravityAcc-std()-X
  * tGravityAcc-std()-Y
  * tGravityAcc-std()-Z
  * tBodyAccJerk-mean()-X
  * tBodyAccJerk-mean()-Y      
  * tBodyAccJerk-mean()-Z
  * tBodyAccJerk-std()-X       
  * tBodyAccJerk-std()-Y
  * tBodyAccJerk-std()-Z       
  * tBodyGyro-mean()-X
  * tBodyGyro-mean()-Y         
  * tBodyGyro-mean()-Z
  * tBodyGyro-std()-X          
  * tBodyGyro-std()-Y
  * tBodyGyro-std()-Z          
  * tBodyGyroJerk-mean()-X
  * tBodyGyroJerk-mean()-Y     
  * tBodyGyroJerk-mean()-Z
  * tBodyGyroJerk-std()-X      
  * tBodyGyroJerk-std()-Y
  * tBodyGyroJerk-std()-Z      
  * tBodyAccMag-mean()
  * tBodyAccMag-std()          
  * tGravityAccMag-mean()
  * tGravityAccMag-std()       
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()      
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()         
  * tBodyGyroJerkMag-mean()
  * tBodyGyroJerkMag-std()     
  * fBodyAcc-mean()-X
  * fBodyAcc-mean()-Y          
  * fBodyAcc-mean()-Z
  * fBodyAcc-std()-X           
  * fBodyAcc-std()-Y
  * fBodyAcc-std()-Z           
  * fBodyAccJerk-mean()-X
  * fBodyAccJerk-mean()-Y      
  * fBodyAccJerk-mean()-Z
  * fBodyAccJerk-std()-X       
  * fBodyAccJerk-std()-Y
  * fBodyAccJerk-std()-Z       
  * fBodyGyro-mean()-X
  * fBodyGyro-mean()-Y         
  * fBodyGyro-mean()-Z
  * fBodyGyro-std()-X          
  * fBodyGyro-std()-Y
  * fBodyGyro-std()-Z
  * fBodyAccMag-mean()
  * fBodyAccMag-std()
  * fBodyBodyAccJerkMag-mean()
  * fBodyBodyAccJerkMag-std()
  * fBodyBodyGyroMag-mean()
  * fBodyBodyGyroMag-std()
  * fBodyBodyGyroJerkMag-mean()
  * fBodyBodyGyroJerkMag-std()

* value - (numeric) The measure of the feature (mean or std) of the measurement.


### subxy_summ / tidy2.rds
This object/output file is 11880 observations of 4 variables. This object
represents the average values for each subject:activity:variable combination.
As with subyx the variables are given below:

* subject_code - (numeric) Number from 1-30 used to indicate the person 
  performing the action.
  
* activity - (factor) Name of activity being performed. Six levels are:
  * Walking
  * Walking Upstairs
  * Walking Downstairs
  * Sitting
  * Standing
  * Laying

* variable - (character) Name of the measurement performed, of the format 
{measurement}-{function}-{dimension} where function is mean() or std() and
dimension is X, Y or Z, as appropriate. The possible values are:
  * tBodyAcc-mean()-X
  * tBodyAcc-mean()-Y
  * tBodyAcc-mean()-Z
  * tBodyAcc-std()-X
  * tBodyAcc-std()-Y
  * tBodyAcc-std()-Z
  * tGravityAcc-mean()-X
  * tGravityAcc-mean()-Y
  * tGravityAcc-mean()-Z
  * tGravityAcc-std()-X
  * tGravityAcc-std()-Y
  * tGravityAcc-std()-Z
  * tBodyAccJerk-mean()-X
  * tBodyAccJerk-mean()-Y      
  * tBodyAccJerk-mean()-Z
  * tBodyAccJerk-std()-X       
  * tBodyAccJerk-std()-Y
  * tBodyAccJerk-std()-Z       
  * tBodyGyro-mean()-X
  * tBodyGyro-mean()-Y         
  * tBodyGyro-mean()-Z
  * tBodyGyro-std()-X          
  * tBodyGyro-std()-Y
  * tBodyGyro-std()-Z          
  * tBodyGyroJerk-mean()-X
  * tBodyGyroJerk-mean()-Y     
  * tBodyGyroJerk-mean()-Z
  * tBodyGyroJerk-std()-X      
  * tBodyGyroJerk-std()-Y
  * tBodyGyroJerk-std()-Z      
  * tBodyAccMag-mean()
  * tBodyAccMag-std()          
  * tGravityAccMag-mean()
  * tGravityAccMag-std()       
  * tBodyAccJerkMag-mean()
  * tBodyAccJerkMag-std()      
  * tBodyGyroMag-mean()
  * tBodyGyroMag-std()         
  * tBodyGyroJerkMag-mean()
  * tBodyGyroJerkMag-std()     
  * fBodyAcc-mean()-X
  * fBodyAcc-mean()-Y          
  * fBodyAcc-mean()-Z
  * fBodyAcc-std()-X           
  * fBodyAcc-std()-Y
  * fBodyAcc-std()-Z           
  * fBodyAccJerk-mean()-X
  * fBodyAccJerk-mean()-Y      
  * fBodyAccJerk-mean()-Z
  * fBodyAccJerk-std()-X       
  * fBodyAccJerk-std()-Y
  * fBodyAccJerk-std()-Z       
  * fBodyGyro-mean()-X
  * fBodyGyro-mean()-Y         
  * fBodyGyro-mean()-Z
  * fBodyGyro-std()-X          
  * fBodyGyro-std()-Y
  * fBodyGyro-std()-Z
  * fBodyAccMag-mean()
  * fBodyAccMag-std()
  * fBodyBodyAccJerkMag-mean()
  * fBodyBodyAccJerkMag-std()
  * fBodyBodyGyroMag-mean()
  * fBodyBodyGyroMag-std()
  * fBodyBodyGyroJerkMag-mean()
  * fBodyBodyGyroJerkMag-std()

* value - (numeric) The measure of the feature (mean or std) of the measurement.
