For information about this project and its data sets, please consult **[`CodeBook.md`](CodeBook.md)**. This README.md file concerns the R script `run_analysis.R` that transforms the raw data set into the tidy data set.

The script assumes the working directory contains a subdirectory `UCI HAR Dataset` which contains the raw data.

It first loads the activity labels and feature labels from the text files in the raw data, then determines which of the features contain mean and standard deviations of the measurements, since these are the values we want to use for creating our tidy data set.

Next it cleans up the feature labels by converting the capitalization to uniform camel case, removing punctuation, and moving `"Mean"`/`"Std"` uniformly to the end of the label. Some of the feature names also have a duplicated string `"BodyBody"` in them which should just read `"Body"`. This cleans that up too.

Then it adds two columns to the data frame containing the feature labels, one column which contains the cleaned up feature label to use as a variable name, and another column which includes the column class to use, with `"NULL"` if we do not wish to include this feature when loading the data. Creating this column class vector allows us to pass it as an argument to read.table in order to skip columns which don't represent features we will be processing.

Next the script loads the train and test data using the column names and classes we specify. We also turn convert the activity data from a numerical type into a factor, since it is categorical in nature, and combine all the train and test data including into a single data frame.

Finally, we group by the subject ID and activity label of the data and calculate the mean of all the other measurements. The result is the tidy data set and is written out to `mean_by_subject_by_activity.txt`.

This file can be loaded in R with `read.table("mean_by_subject_by_activity.txt", header=TRUE)`.
