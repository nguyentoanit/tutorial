## What is good database design?
Certain principles guide the database design process. The first principle is that duplicate information (also called redundant data) is bad, because it wastes space and increases the likelihood of errors and inconsistencies. The second principle is that the correctness and completeness of information is important. If your database contains incorrect information, any reports that pull information from the database will also contain incorrect information. As a result, any decisions you make that are based on those reports will then be misinformed.

A good database design is, therefore, one that:
  - Divides your information into subject-based tables to reduce redundant data.
  - Provides Access with the information it requires to join the information in the tables together as needed.
  - Helps support and ensure the accuracy and integrity of your information.
  - Accommodates your data processing and reporting needs.

## Turning information items into columns
To determine the columns in a table, decide what information you need to track about the subject recorded in the table.

The following list shows a few tips for determining your columns.

## Applying the normalization rules


## Ref: 
- https://support.microsoft.com/en-us/office/database-design-basics-eb2159cf-1e30-401a-8084-bd4f9c9ca1f5
- https://www.guru99.com/database-normalization.html
