-- create database 'datawarehouse' and schemas 
/*
script creates a new db called 'datawarehouse after checking if it already exists.
if exists it is dropped and recreated . 

running script will drop entire database with details

*/

use master;

-- drop and recreate the datawarehouse database

if exists(select 1 from sys.databases where name = 'datawarehouse')
begin
alter database datawarehouse set single_user with rollback immediate;
drop database datawarehouse;

end;
go

create database datawarehouse;

use datawarehouse;

create schema bronze;
go

create schema silver;
go

create schema gold;
go


