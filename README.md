# Getting and Cleaning Data Course Project: Wearable Computing Dataset Cleansing

The aim of the project was to process a wearable computing dataset generated from 30 subjects into a tidy dataset.

The data for the project can be found at the following location: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

### Processing Overview:

The "run_analysis.R" script handles all the processing tasks required, namely:
- Download files if they haven't already been downloaded.
- Read training data using "read.table".
- Read test data using "read.table".
- Read feature metadata to use for column heading creation.
- Capture those fields related to mean / standard deviation by subsetting.
- Cleanse variable names (by removing brackets and changing hyphen to underscores).
- Extract only data on mean / standard deviation from datasets (selection of columns).
- Rename columns to sensible names (using grep).
- Read activity label metadata to use to rename activities.
- Re-label activities.
- Merge the training, test and activity datasets.
- Summarise dataset grouping by "subject" and "activity".
- Write dataset out to file using "write.table".