-- Insert data into "DocumentTypes" table
INSERT INTO DocumentTypes (DOCID, DOCTYPE) VALUES
(1, 'DriverLicense'),
(2, 'Passport'),
(3, 'ID');

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
