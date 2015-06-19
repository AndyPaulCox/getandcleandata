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
