<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>

<body>

<h2>18th June 2015</h2>
<h1>Getting and Cleaning Data Project Codebook</h1>

<h2>Environment Details</h2>
Work carried out on Mac OSX Yosemite 10.10.3 and R Studio version 0.98.1103

<h2>Raw Data Files</h2>
<p>The data file alldat1.txt contains a data file derived from the following dataset</p>

<p>"https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"</p>

<p>This represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:</p>

<p>"http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones"</a>

<p>The features selected for this database come from the accelerometer and gyroscope-axial raw signals tAcc-XYZ and tGyro-XYZ. 

Detail of how the variables where derived from the raw data are available in the README.txt and the features_info.txt files in the downloaded dataset.</p>


<p>The data manipilation carried out here utilised the following files downloaded from the above linked dataset</p>
<ul>

<li>X_test.txt</li>
<li>Y_test.txt</li>
<li>X_train.txt</li>
<li>Y_train.txt</li>
<li>activity_labels.txt</li>
<li>features.txt</li>
</ul>

<h2>"Variable Naming Conventions"</h2>
<p>Construction and meaning of the 81 variable names in alldat1.txt is as follows:</p>

<p><strong>subjectID:</strong>  is the unique identification of the subject numbered 1 to 30 as Integer</p>
<p><strong>activity:</strong>  is the activity undertaken, a character vector with six activities "STANDING" ,"SITTING","LAYING","WALKING","WALKING_DOWNSTAIRS",
"WALKING_UPSTAIRS"</p>

<p>The ramaining 79 variable names are composite and constructed from the following components:</p>

<p><strong>t:</strong>  prefix denoting time domain signals</p>
<p><strong>f:</strong>  prefix denoting frequency domain variables</p>
<p><strong>Acc:</strong> Acceleraometer derived measurements</p>
<p><strong>Gyro:</strong> Gyroscope derived measurements</p>
<p><strong>Body:</strong> Body acceleration variable type</p>
<p><strong>Gravity:</strong> Gravity acceleration variable type</p>
<p><strong>Mag:</strong> Magnitude measurement</p>
<p><strong>Jerk:</strong> Jerk signals</p>
<p><strong>mean():</strong> Mean value</p>
<p><strong>std():</strong> deviation</p>
<p><strong>_X:</strong> X axis of the gyroscope</p>
<p><strong>_Y:</strong> Y axis of the gyroscope</p>
<p><strong>_Z:</strong> Z axis of the gyroscope</p>

<h2>"List of Variables"</h2>
<p>The complete list of valiables in the alldat1.txt dataset in the correct order is as follows</p>

<p>subjectID</p>
<p>activity</p>
<p>tBodyAcc-mean()-X</p>
<p>tBodyAcc-mean()-Y</p>
<p>tBodyAcc-mean()-Z</p>
<p>tBodyAcc-std()-X</p>
<p>tBodyAcc-std()-Y</p>
<p>tBodyAcc-std()-Z</p>
<p>tGravityAcc-mean()-X</p>
<p>tGravityAcc-mean()-Y</p>
<p>tGravityAcc-mean()-Z</p>
<p>tGravityAcc-std()-X</p>
<p>tGravityAcc-std()-Y</p>
<p>tGravityAcc-std()-Z</p>
<p>tBodyAccJerk-mean()-X</p>
<p>tBodyAccJerk-mean()-Y</p>
<p>tBodyAccJerk-mean()-Z</p>
<p>tBodyAccJerk-std()-X</p>
<p>tBodyAccJerk-std()-Y</p>
<p>tBodyAccJerk-std()-Z</p>
<p>tBodyGyro-mean()-X</p>
<p>tBodyGyro-mean()-Y</p>
<p>tBodyGyro-mean()-Z</p>
<p>tBodyGyro-std()-X</p>
<p>tBodyGyro-std()-Y</p>
<p>tBodyGyro-std()-Z</p>
<p>tBodyGyroJerk-mean()-X</p>
<p>tBodyGyroJerk-mean()-Y</p>
<p>tBodyGyroJerk-mean()-Z</p>
<p>tBodyGyroJerk-std()-X</p>
<p>tBodyGyroJerk-std()-Y</p>
<p>tBodyGyroJerk-std()-Z</p>
<p>tBodyAccMag-mean()</p>
<p>tBodyAccMag-std()</p>
<p>tGravityAccMag-mean()</p>
<p>tGravityAccMag-std()</p>
<p>tBodyAccJerkMag-mean()</p>
<p>tBodyAccJerkMag-std()</p>
<p>tBodyGyroMag-mean()</p>
<p>tBodyGyroMag-std()</p>
<p>tBodyGyroJerkMag-mean()</p>
<p>tBodyGyroJerkMag-std()</p>
<p>fBodyAcc-mean()-X</p>
<p>fBodyAcc-mean()-Y</p>
<p>fBodyAcc-mean()-Z</p>
<p>fBodyAcc-std()-X</p>
<p>fBodyAcc-std()-Y</p>
<p>fBodyAcc-std()-Z</p>
<p>fBodyAcc-meanFreq()-X</p>
<p>fBodyAcc-meanFreq()-Y</p>
<p>fBodyAcc-meanFreq()-Z</p>
<p>fBodyAccJerk-mean()-X</p>
<p>fBodyAccJerk-mean()-Y</p>
<p>fBodyAccJerk-mean()-Z</p>
<p>fBodyAccJerk-std()-X</p>
<p>fBodyAccJerk-std()-Y</p>
<p>fBodyAccJerk-std()-Z</p>
<p>fBodyAccJerk-meanFreq()-X</p>
<p>fBodyAccJerk-meanFreq()-Y</p>
<p>fBodyAccJerk-meanFreq()-Z</p>
<p>fBodyGyro-mean()-X</p>
<p>fBodyGyro-mean()-Y</p>
<p>fBodyGyro-mean()-Z</p>
<p>fBodyGyro-std()-X</p>
<p>fBodyGyro-std()-Y</p>
<p>fBodyGyro-std()-Z</p>
<p>fBodyGyro-meanFreq()-X</p>
<p>fBodyGyro-meanFreq()-Y</p>
<p>fBodyGyro-meanFreq()-Z</p>
<p>fBodyAccMag-mean()</p>
<p>fBodyAccMag-std()</p>
<p>fBodyAccMag-meanFreq()</p>
<p>fBodyBodyAccJerkMag-mean()</p>
<p>fBodyBodyAccJerkMag-std()</p>
<p>fBodyBodyAccJerkMag-meanFreq()</p>
<p>fBodyBodyGyroMag-mean()</p>
<p>fBodyBodyGyroMag-std()</p>
<p>fBodyBodyGyroMag-meanFreq()</p>
<p>fBodyBodyGyroJerkMag-mean()</p>
<p>fBodyBodyGyroJerkMag-std()</p>
<p>fBodyBodyGyroJerkMag-meanFreq()</p>


<h2>Opening the dataset</h2>
<p>There are probably many ways to use the dataset, but I successfully used:</p>
<code>read.delim(alldat1.txt ,sep="\t",header=F)</code>


<h2>Description of the manipulations carried out to obtain the data file.</h2>

<p>R commented code is available in the Run_Analysis.R script</p>

<p>The individual data files were read into R</p>
<p>The activity names and coding were also read in to act as a reference when recoding the activity variable</p>
<p>The feature names where read in from features.txt to act as column names</p>
<p>The variable names “subjectID” and “activity” where added to the variable names previously read in to make a more informative set of column named</p>
<p>Each of the three respective files in train was merged with its equivalent in the test data using <code>rbind()</code> creating three files.</p>
<p>The resulting three files where bound together by column using <code>cbind()</code> to create a single dataset. Column names previously created where assigned to the dataset</p>
<p>The subset of variables which were means or standard deviations were selected as a subset of all columns together with the subjectID and activity variables.</p>
<p>The codes for activity (1 to 6) where replaced with meaningful titles as described in the description of the variables. Variable names were tidied.</p>

<p>A separate file called agg_data1.txt was created that aggregated the data in alldat1.txt providing means for each subject and each activity.</p>

<h2>Files</h2>

<p>This repository contains the following files:</p>

<p><strong>README.md:</strong>   The one you are reading! Describing what files are in the repo</p>
<p><strong>Run_analysis.R</strong>  R script with commented code for the data manipulations carried out to get from the raw data files to the two output files alldat2.txt and agg_dat1.txt</p>
<p><strong>Codebook.md</strong> Code book describing the variables contained in alldat1 and other details relevant to successful reproduction of the analysis including a brief background and links to the original raw data and documentation.</p>

<p><strong>alldat1.txt</strong>  the transformed raw data</p>
<p><strong>agg_data1.txt</strong>  the aggregate output of the transformed raw data file alldat1.txt</p>
</body>
</html>