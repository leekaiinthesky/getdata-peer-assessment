## Project Description

This repository contains my submission for the peer review assignment of the Coursera course Getting and Cleaning Data (https://class.coursera.org/getdata-015).

For this assignment, raw data was transformed into a tidy data set using the enclosed script run_analysis.R.

The tidy data result is stored as mean_by_subject_by_activity.txt. 

## Description of the Raw Data

Raw data was downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

Further description of the raw data is available at: http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The following excerpt from that webpage describes the collection of the original data:

> The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

> The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

The raw data include for each observation a 561-feature vector whose values are normalized and bounded within the interval [-1, 1].

## Description of the Tidy Data

The script run_analysis.R transforms the raw data into a tidy data set. Please consult README.md for a description of how the script works.

Here is a description of each variable in the tidy data set:

- `subjectId`
Integer from 1 to 30, representing each of 30 study participants.

- `activityLabel`
Factor spanning six values {WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING}, representing six activities the study participants performed.

- `tBodyAccXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the X direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the Y direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the accelerometer's signal in the Z direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the X direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the Y direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the accelerometer's signal in the Z direction attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkXMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkYMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkZMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkXMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkYMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkZMean`
Normalized numerical value in the interval [-1, 1], representing the mean over the duration of an observation of the jerk of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the jerk of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the total magnitude of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the total magnitude of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the total magnitude of the accelerometer's signal attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tGravityAccMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the total magnitude of the accelerometer's signal attributed to gravity acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the total magnitude of the jerk of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyAccJerkMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the total magnitude of the jerk of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the total magnitude of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation value over the duration of an observation of the total magnitude of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value over the duration of an observation of the total magnitude of the jerk of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `tBodyGyroJerkMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation over the duration of an observation of the total magnitude of the jerk of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the jerk of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the jerk of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the jerk of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the jerk of the accelerometer's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the jerk of the accelerometer's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the jerk of the accelerometer's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroXMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroYMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroZMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroXStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the gyroscope's signal in the X direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroYStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the gyroscope's signal in the Y direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroZStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the gyroscope's signal in the Z direction attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the total magnitude of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the total magnitude of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the total magnitude of the jerk of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyAccJerkMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the total magnitude of the jerk of the accelerometer's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the total magnitude of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the total magnitude of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroJerkMagMean`
Normalized numerical value in the interval [-1, 1], representing the mean value of the fast Fourier transformation of the total magnitude of the jerk of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.

- `fBodyGyroJerkMagStd`
Normalized numerical value in the interval [-1, 1], representing the standard deviation of the fast Fourier transformation of the total magnitude of the jerk of the gyroscope's signal attributed to body acceleration. This column contains the average value over all observations for a given subject and activity.
