# ProjectScript

At the first, the data are downloaded, and unzipped. Note that all files in the zipped file are located into Allfile object in Line 8.

Then, the related data for both train and test data are imported into R (Lines 11:16)
The labels are imported and stored in features object(line 17)

Because we are only interested on mean and std, the corresponding column number are identified from features text file and stored in vector ids. Then, we extract useful information based on ids.

In line 28 we merged the variables for test and train data set, and create a new dataframe called grouped_data
   - Labels of variable are assigned in line 29
In line 33 we merged the activities of the tes and train data set , and create a new dataframe called grouped_activity
   - The activity are labeled in lines 37-39

In line 43 we merged the subjects of the tes and train data set , and create a new dataframe called grouped_subject

Then we combine all the grouped_data, grouped_activity, and grouped_subject in line 47

To reach a tidy dataset, we take averages of the variables based on subject and activity using function 51

Finally the tidy data is written on a text file.

