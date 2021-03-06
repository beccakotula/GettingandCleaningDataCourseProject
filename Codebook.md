Tidy Data Information
=====================

This codebook pertains to the dataset tidy\_data.txt. Information about
the source data from which it was derived is located at the bottom of
this codebook.

Variables
=========

The first row of the data set contains the variable names.

Identifiers
-----------

Subject - Identifies the subject. Integer, range 1-30.

Activity identifier, string, with 6 possible values:

-   WALKING- Subject was walking

-   WALKING\_UPSTAIRS- Subject was walking upstairs

-   WALKING\_DOWNSTAIRS- Subject was walking downstairs

-   SITTING- Subject was sitting

-   STANDING- Subject was standing

-   LAYING- Subject was laying

Features
--------

Each feature in tidy\_data.txt is an average of measurements from the
source data- grouped by subject and activity and then averaged.

Features are normalized and bounded within \[-1,1\].

Prior to normalisation, acceleration measurements (variables containing
Accelerometer) were made in g's (9.81 m.s⁻²) and gyroscope measurements
(variables containing Gyroscope) were made in radians per second
(rad.s⁻¹).

Magnitudes of three-dimensional signals (variables containing Magnitude)
were calculated using the Euclidean norm.

Time Domain
-----------

The features selected for this database come from the accelerometer and
gyroscope 3-axial raw signals timeDomainAccelerationXYZ and
timeDomainGyroscopeXYZ. These time domain signals were captured at a
constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of
20 Hz to remove noise. Similarly, the acceleration signal was then
separated into body and gravity acceleration signals
(timeDomainBodyAccelerationXYZ and timeDomainGravityAccelerationXYZ)
using another low pass Butterworth filter with a corner frequency of 0.3
Hz.

Subsequently, the body linear acceleration and angular velocity were
derived in time to obtain Jerk signals
(timeDomainBodyAccelerationJerkXYZ and timeDomainBodyGyroscopeJerkXYZ).
Also the magnitude of these three-dimensional signals were calculated
using the Euclidean norm (timeDomainBodyAccelerationMagnitude,
timeDomainGravityAccellerationMagnitude,
timeDomainBodyAccelerationJerkMagnitude,
timeDomainBodyGyroscopeMagnitude, timeDomainBodyGyroscopeJerkMagnitude).

"timeDomainBodyAccelerationMeanX"  
"timeDomainBodyAccelerationMeanY"  
"timeDomainBodyAccelerationMeanZ"  
"timeDomainBodyAccelerationStandardDeviationX"  
"timeDomainBodyAccelerationStandardDeviationY"  
"timeDomainBodyAccelerationStandardDeviationZ"  
"timeDomainGravityAccelerationMeanX"  
"timeDomainGravityAccelerationMeanY"  
"timeDomainGravityAccelerationMeanZ"  
"timeDomainGravityAccelerationStandardDeviationX"  
"timeDomainGravityAccelerationStandardDeviationY"  
"timeDomainGravityAccelerationStandardDeviationZ"  
"timeDomainBodyAccelerationJerkMeanX"  
"timeDomainBodyAccelerationJerkMeanY"  
"timeDomainBodyAccelerationJerkMeanZ"  
"timeDomainBodyAccelerationJerkStandardDeviationX"  
"timeDomainBodyAccelerationJerkStandardDeviationY"  
"timeDomainBodyAccelerationJerkStandardDeviationZ"  
"timeDomainBodyGyroscopeMeanX"  
"timeDomainBodyGyroscopeMeanY"  
"timeDomainBodyGyroscopeMeanZ"  
"timeDomainBodyGyroscopeStandardDeviationX"  
"timeDomainBodyGyroscopeStandardDeviationY"  
"timeDomainBodyGyroscopeStandardDeviationZ"  
"timeDomainBodyGyroscopeJerkMeanX"  
"timeDomainBodyGyroscopeJerkMeanY"  
"timeDomainBodyGyroscopeJerkMeanZ"  
"timeDomainBodyGyroscopeJerkStandardDeviationX"  
"timeDomainBodyGyroscopeJerkStandardDeviationY"  
"timeDomainBodyGyroscopeJerkStandardDeviationZ"  
"timeDomainBodyAccelerationMagnitudeMean"  
"timeDomainBodyAccelerationMagnitudeStandardDeviation"  
"timeDomainGravityAccelerationMagnitudeMean"  
"timeDomainGravityAccelerationMagnitudeStandardDeviation"  
"timeDomainBodyAccelerationJerkMagnitudeMean"  
"timeDomainBodyAccelerationJerkMagnitudeStandardDeviation"  
"timeDomainBodyGyroscopeMagnitudeMean"  
"timeDomainBodyGyroscopeMagnitudeStandardDeviation"  
"timeDomainBodyGyroscopeJerkMagnitudeMean"  
"timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation"

### Frequency Domain

Frequency-domain signals (variables prefixed by frequencyDomain),
resulting from the application of a Fast Fourier Transform (FFT) to some
of the time-domain signals.

"frequencyDomainBodyAccelerationMeanX"  
"frequencyDomainBodyAccelerationMeanY"  
"frequencyDomainBodyAccelerationMeanZ"  
"frequencyDomainBodyAccelerationStandardDeviationX"  
"frequencyDomainBodyAccelerationStandardDeviationY"  
"frequencyDomainBodyAccelerationStandardDeviationZ"  
"frequencyDomainBodyAccelerationMeanFrequencyX"  
"frequencyDomainBodyAccelerationMeanFrequencyY"  
"frequencyDomainBodyAccelerationMeanFrequencyZ"  
"frequencyDomainBodyAccelerationJerkMeanX"  
"frequencyDomainBodyAccelerationJerkMeanY"  
"frequencyDomainBodyAccelerationJerkMeanZ"  
"frequencyDomainBodyAccelerationJerkStandardDeviationX"  
"frequencyDomainBodyAccelerationJerkStandardDeviationY"  
"frequencyDomainBodyAccelerationJerkStandardDeviationZ"  
"frequencyDomainBodyAccelerationJerkMeanFrequencyX"  
"frequencyDomainBodyAccelerationJerkMeanFrequencyY"  
"frequencyDomainBodyAccelerationJerkMeanFrequencyZ"  
"frequencyDomainBodyGyroscopeMeanX"  
"frequencyDomainBodyGyroscopeMeanY"  
"frequencyDomainBodyGyroscopeMeanZ"  
"frequencyDomainBodyGyroscopeStandardDeviationX"  
"frequencyDomainBodyGyroscopeStandardDeviationY"  
"frequencyDomainBodyGyroscopeStandardDeviationZ"  
"frequencyDomainBodyGyroscopeMeanFrequencyX"  
"frequencyDomainBodyGyroscopeMeanFrequencyY"  
"frequencyDomainBodyGyroscopeMeanFrequencyZ"  
"frequencyDomainBodyAccelerationMagnitudeMean"  
"frequencyDomainBodyAccelerationMagnitudeStandardDeviation"  
"frequencyDomainBodyAccelerationMagnitudeMeanFrequency"  
"frequencyDomainBodyAccelerationJerkMagnitudeMean"  
"frequencyDomainBodyAccelerationJerkMagnitudeStandardDeviation"
"frequencyDomainBodyAccelerationJerkMagnitudeMeanFrequency"  
"frequencyDomainBodyGyroscopeMagnitudeMean"  
"frequencyDomainBodyGyroscopeMagnitudeStandardDeviation"  
"frequencyDomainBodyGyroscopeMagnitudeMeanFrequency"  
"frequencyDomainBodyGyroscopeJerkMagnitudeMean"  
"frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation"  
"frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency"

Transformations
===============

Source data is located at:
<https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

The following transformations were applied to the source data set to
create the tidy data set: \* Training and test data sets were merged to
create one data set.

-   The measurements on the mean and standard deviation for each
    measurement were extracted, the others were not used.

-   Numbers used to identify activities were replaced with descriptive
    activity names.

-   Variable names were cleaned up and replaced by descriptive variable
    names using the following steps: +Special characters were removed
    (eg: "(", ")", "-"). +The prefixes "t" and "f" were expanded to
    "timeDomain" and "frequencyDomain", respectively. +Abbreviations
    were expanded. "Acc", "Gyro", "Mag", "Freq", "mean", and "std" were
    replaced with "Acceleration", "Gyroscope", "Magnitude", "Frequency",
    "Mean", and "StandardDeviation", respectively. +Duplicated word
    "BodyBody" was replaced with "Body".

-   From the data set in step 4, a second, independent tidy data set
    with the average of each variable for each activity and each subject
    was created. This dataset is located under the file name
    tidy\_data.txt.

Source Data Information
=======================

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain. See
'features\_info.txt' for more details.

For each record it is provided:
===============================

-   Triaxial acceleration from the accelerometer (total acceleration)
    and the estimated body acceleration.
-   Triaxial Angular velocity from the gyroscope.
-   A 561-feature vector with time and frequency domain variables.
-   Its activity label.
-   An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

-   'README.txt'

-   'features\_info.txt': Shows information about the variables used on
    the feature vector.

-   'features.txt': List of all features.

-   'activity\_labels.txt': Links the class labels with their activity
    name.

-   'train/X\_train.txt': Training set.

-   'train/y\_train.txt': Training labels.

-   'test/X\_test.txt': Test set.

-   'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their
descriptions are equivalent.

-   'train/subject\_train.txt': Each row identifies the subject who
    performed the activity for each window sample. Its range is from 1
    to 30.

-   'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units 'g'. Every row shows a 128 element vector. The same
    description applies for the 'total\_acc\_x\_train.txt' and
    'total\_acc\_z\_train.txt' files for the Y and Z axis.

-   'train/Inertial Signals/body\_acc\_x\_train.txt': The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.

-   'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

Notes:
======

-   Features are normalized and bounded within \[-1,1\].
-   Each feature vector is a row on the text file.

For more information about this dataset contact:
<activityrecognition@smartlab.ws>

License:
========

Use of this dataset in publications must be acknowledged by referencing
the following publication \[1\]

\[1\] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and
Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a
Multiclass Hardware-Friendly Support Vector Machine. International
Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz,
Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or
explicit can be addressed to the authors or their institutions for its
use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita.
November 2012.
