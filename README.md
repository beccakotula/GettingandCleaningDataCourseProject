Coursera- Getting and Cleaning Data Course Project
==================================================

This repository contains the following files:

\*README.Rmd , the current file, which gives an overview of the data and
how it was created and transformed.

\*tidy\_data.txt , the tidy data set.

\*Codebook.Rmd , a codebook describing the content of the data set,
including the variables and transformations used.

\*run\_analysis.R , the R script used to create the tidy data set. See
below section, "Creating the Tidy Data", for script details.

Background and Overview
-----------------------

One of the most exciting areas in all of data science right now is
wearable computing. Companies like Fitbit, Nike, and Jawbone Up are
racing to develop the most advanced algorithms to attract new users.

The data linked to below represents data collected from the
accelerometers from the Samsung Galaxy S smartphone. A full description
is available at the site where the data was obtained:

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Here are the data used for the project:

<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

Creating the Tidy Data
----------------------

The R script run\_analysis.R creates a tidy data set by doing the
following:

-   Downloads, unzips, and reads the data.

-   Merges the training and the test sets to create one data set.

-   Extracts only the measurements on the mean and standard deviation
    for each measurement.

-   Uses descriptive activity names to name the activities in the data
    set

-   Appropriately labels the data set with descriptive variable names.

-   From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject. This dataset is located under the file name tidy\_data.txt.

This script uses the following R package: dplyr.
