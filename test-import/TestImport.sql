drop database if exists testimport;

create database testimport;

use testimport;

create table testimport (Store_Number char(32),
Campus char(64),
Term char(16),
Division char(16),
Department char(16),
Course_Number char(16),
Section char(16),
Section_Note varchar(256),
Adoption_Status char(4),
Choice_Minimum int,
Class_Usage_Indicator char(4),
Item_Type_Indicator char(2),
ISBN char(32),
UPC char(32),
Author_Manufacturer char(128),
Title_Supply_Description varchar(256),
Edition char(16),
Copyright char(16),
Publisher_Vendor char(128),
eBook_Type char(16),
eBook_Format char(32),
Rental_Flag char(2),
Item_ID char(64),
Parent_Item_ID char(64),
New_Retail_Price decimal(10,2),
Used_Retail_Price decimal(10,2),
New_Rental_Fee decimal(10,2),
Used_Rental_Fee decimal(10,2),
Course_Reference_Number int,
Flag char(1));

load data infile "/Users/abikombe/Code/SQL/TestImport/TestImport.csv" into table testimport
fields terminated by ','
optionally enclosed by '"'
lines terminated by '\r\n'
ignore 1 lines;