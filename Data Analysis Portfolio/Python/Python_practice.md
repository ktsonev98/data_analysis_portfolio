# Project Summary

## Data Retrieval from an API 
- Connected to the Rebrickable LEGO API using Python
- Authenticated requests with an API key
- Retrieved LEGO set and theme data using paginated API endpoints
<img width="931" height="437" alt="image" src="https://github.com/user-attachments/assets/f3c6c63b-940d-461d-ac8a-5dcc648a40e2" />

## Data Formatting
- Converted JSON API responses into pandas DataFrames
- Organised hierarchical theme data to include sub-themes
  <img width="1060" height="836" alt="image" src="https://github.com/user-attachments/assets/9dc7ab3d-0dc2-4692-8795-66c35e638f8a" />

- Combined multiple API responses into a single dataset
<img width="1066" height="343" alt="image" src="https://github.com/user-attachments/assets/37f46c83-f618-45b2-8c5b-42ae27c66235" />

## Data Cleaning
- Ensured numeric fields were correctly formatted for analysis
  <img width="642" height="677" alt="image" src="https://github.com/user-attachments/assets/d83b3614-1245-403d-ba87-8ce610e91620" />
- Removed duplicate records created during data merging
- Filtered out missing or invalid values

## Data Validation
- Verified expected columns were present in the dataset
- Confirmed numerical fields (e.g. part counts) contained valid values

## Tools Used
- Python
- requests library
- pandas library
