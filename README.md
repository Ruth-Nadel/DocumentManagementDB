# Document Management Database
(Creation, Insertions, and specific queries for interview task)
This repository contains a small project for managing country documents with a simple database named "DocumentManagementDB."\
All the steps you can find in the repository files

## Database Setup

### Step 1: Create the Database

Execute the following SQL script to create the "DocumentManagementDB" database:

```sql
CREATE DATABASE DocumentManagementDB;
```

### Step 2: Switch to the Database

Switch to the "DocumentManagementDB" database using:

```sql
USE DocumentManagementDB;
```

### Step 3: Create Tables

Create the "CountryDocuments" and "DocumentTypes" tables:

```sql
-- Create the "CountryDocuments" table
CREATE TABLE CountryDocuments (
    COUNTRY VARCHAR(50) NOT NULL,
    DOCID INT,
    AMOUNT INT,
    COUNTDATE DATE,
    FOREIGN KEY (DOCID) REFERENCES DocumentTypes(DOCID)
);

-- Create the "DocumentTypes" table
CREATE TABLE DocumentTypes (
    DOCID INT PRIMARY KEY,
    DOCTYPE VARCHAR(20) NOT NULL
);
```

### Step 4: Insert Sample Data

Insert sample data into the "DocumentTypes" table:

```sql
INSERT INTO DocumentTypes (DOCID, DOCTYPE) VALUES
(1, 'DriverLicense'),
(2, 'Passport'),
(3, 'ID');
```

Insert data into the "CountryDocuments" table:

```sql
-- Insert data into "CountryDocuments" table
INSERT INTO CountryDocuments (COUNTRY, DOCID, AMOUNT, COUNTDATE)
VALUES
('GBR', 1, 2584, '2021-06-20'),
('GBR', 2, 1500, '1999-12-31'),
('GBR', 3, 9450, '2015-01-01'),
('CA', 1, 580, '2015-03-28'),
('CA', 2, 470, '2017-04-22'),
('CA', 1, 150, '2020-01-15'),
('JPN', 1, 9000, '2021-12-01');
-- Add more data as needed...
```

## Querying the Database
you can add any query you choose,
or run the file "DocumentManagementQueries"

## Notes
All the steps you can find in the repository files
