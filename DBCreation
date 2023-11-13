-- SQL 


CREATE DATABASE DocumentManagementDB;

USE DocumentManagementDB;

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
