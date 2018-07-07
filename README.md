"run_analysis.R"
This script imports, merges, and calculates averages for the training and test datasets of the "Human Activity Recognition Using Smartphones" project, run by:

==================================================================
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws
==================================================================



The dataset includes the following files:
- 'features.txt': List of all variables measured in the experiment

- 'activity_labels.txt': Links activities with their class label

- 'train/X_train.txt': Raw data for training set

- 'train/y_train.txt': Activity class labels for each observation in 'X_train.txt'

- 'train/subject_train.txt': Identity of the subject (ranging between 1-30) for each observation in 'X_train.txt'

- 'test/X_test.txt': Raw data for test set

- 'test/y_test.txt': Activity class labels for each observation in 'X_test.txt'

- 'test/subject_test.txt': Identity of the subject (ranging between 1-30) for each observation in 'X_test.txt'



Analysis description:
The analysis script is broken into the following steps:
1) Importing and labeling raw data
2) Merging training and test datasets
3) Extracting only pertinent measurements (means and standard deviations)
4) Creating a tidy dataset with the averages of each variable for each activity and each subject

1)Importing and labeling raw data
- import activity class labels from 'activity_labels.txt'
	- translated activity labels to lowercase
	- convert to factor variable
	
- import names of measured variables from 'features.txt'

- import and label data from training and test datasets as separate data.frames
	- import raw data as data.frames
	- assign variable names to raw data columns from 'features.txt'
	- import subject ID and activity labels for each dataset
	- label raw data by combining (by column-binding) raw data with subject ID and activity labels data.frames

2) Merging training and test datasets	
- merge training and test datasets (by row-binding) and store as a separate data.frame (full_data)

3) Extracting only pertinent measurements (means and standard deviations)
- select only those columns which contain the words "mean" or "std" (case-sensitive) in their variable name.

- Tidy up the variable names to make them a little easier to read

4) Creating a tidy dataset with the averages of each variable for each activity and each subject
- group dataset by subjectID and activityLabel (and activityID)
- summarize data by calculating mean for all measured variables
- write tidy dataset to new file, "tidy_dataset.txt"



Running the analysis:

To run the analysis, simply run the analysis script, "run_analysis.R". 

Note, for the script to run properly, the working directory must be set to the same directory containing 
the dataset directories and supporting files