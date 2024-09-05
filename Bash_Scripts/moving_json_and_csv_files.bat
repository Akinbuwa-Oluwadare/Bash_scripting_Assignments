#!/bin/bash


# Directories
SOURCE_DIR="C:/Users/OAKINBUWA/Desktop/Data_Engineering_course/Core_data_engineers_projects/CDE_Assignments/CDE_GitBash_Assignment/Raw/Files"  
DEST_DIR="C:/Users/OAKINBUWA/Desktop/Data_Engineering_course/Core_data_engineers_projects/CDE_Assignments/CDE_GitBash_Assignment/Raw/Json_and_Csv"     

# Create the destination folder if it doesn't exist
mkdir -p $DEST_DIR

# Move all CSV and JSON files

echo "Moving CSV and JSON files..."

mv $SOURCE_DIR/*.csv $SOURCE_DIR/*.json $DEST_DIR/

# Check if the move was successful

if [[ $? -eq 0 ]]; then
  echo "Files moved successfully!"
else
  echo "Failed to move files."
  exit 1
fi
