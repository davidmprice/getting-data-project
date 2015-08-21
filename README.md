# getting-data-project
The is the repo for the course project on Getting and Cleaning Data.

Here is an outline of how the run_analysis.R file takes the raw data and makes it tidy. 
More detail is included in the comments of the run_analysis.R file. The Steps correspond
to those outlined in the assignment.

## Step 1
First, we read in the six files which comprise the data and use rbind and cbind to make
a single data frame containing the test data and training data along with subject and 
activity labels. After that, we read in the features.txt file and use that to label the columns.

## Step 2
We then use grep to select only the columns the names of which contain the string "mean()" or
the string "std()" (plus the activity and subject information for each measurement). Only columns
with those exact strings were selected, so variables such as fBodyAcc-meanFreq()-X were not
included. At this point the data frame is called "all_data_mean_std_only."

## Step 3
Using the activity labels given in the original documentation, we then replace the integers
in the Activity column with the name of the activity each corresponds to.

## Step 4
Using the str_replace_all function from the stringr package, we then substitute some abbreviations
for full words and remove the parentheses from the variable names to make them more readable.
After this processing, we then take the vector of new_names that are cleaner and assign that vector
to be the names vector of our data frame.

## Step 5
Finally, we use two functions from the reshape2 package to get a wide tidy data set that shows the
average of each variable for each subject-activity combination. First, we use the melt function using
Subject and Activity as the two id variables, and then we use the dcast function recast the data by
subject and activity, using the mean function. The result is a data frame with 180 rows (30 subjects 
multiplied by six activities) and 68 columns (subject, activity, 66 features). Finally, we write 
this new data frame to a text file.

## Codebook generation 
Since we have already done work on the variable names to make them easier to read, we use gsub to
generate the beginnings of a codebook and write to a file called codebook_basis.md. Thanks to CTA
David Hood for this idea.
