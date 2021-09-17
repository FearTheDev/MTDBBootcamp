
-- UNCOMMENT FOR INITIAL BUILDING OF DATABASE AND SCHEMA

/*
create database FantasyTaverns;
go
use FantasyTaverns;
go
create schema DBBootCamp;
go
*/

use FantasyTaverns;
-- CAREFUL! .. WATCH IT..

-- Drop existing tables
if object_id('DBBootCamp.Taverns', 'U') is not null drop table DBBootCamp.Taverns;
if object_id('DBBootCamp.Users', 'U') is not null drop table DBBootCamp.Users;
if object_id('DBBootCamp.Locations', 'U') is not null drop table DBBootCamp.Locations;
if object_id('DBBootCamp.TavernBasementRats', 'U') is not null drop table DBBootCamp.TavernBasementRats;
if object_id('DBBootCamp.TavernServices', 'U') is not null drop table DBBootCamp.TavernServices;
if object_id('DBBootCamp.Guests', 'U') is not null drop table DBBootCamp.Guests;
if object_id('DBBootCamp.TavernReceivables', 'U') is not null drop table DBBootCamp.TavernReceivables;
if object_id('DBBootCamp.Roles', 'U') is not null drop table DBBootCamp.Roles;
if object_id('DBBootCamp.TavernSupplies', 'U') is not null drop table DBBootCamp.TavernSupplies;
if object_id('DBBootCamp.Sales', 'U') is not null drop table DBBootCamp.Sales;
if object_id('DBBootCamp.Supplies', 'U') is not null drop table DBBootCamp.Supplies;
if object_id('DBBootCamp.Services', 'U') is not null drop table DBBootCamp.Services;
if object_id('DBBootCamp.Statuses', 'U') is not null drop table DBBootCamp.Statuses;
-- OOPS TOO LATE! I DROPPED THEM.

-- THE TABLES ARN'T GONNA BUILD THEMSELVES..
create table DBBootCamp.Taverns(
	TavernID int identity(1,1) primary key,
	TavernName varchar(255),
	LocationID int not null,
	OwnerID int not null,
	FloorCount int not null
);

create table DBBootCamp.Users(
	UserID int identity(1,1) primary key,
	UserName varchar(255) not null,
	UserRole int not null,
	UserDescription varchar(255)
);

create table DBBootCamp.Locations(
	LocationID int identity(1,1) primary key,
	LocationName varchar(255) not null
);

create table DBBootCamp.TavernBasementRats(
	RatID int identity(1,1) primary key,
	RatName varchar(255) not null,
	TavernID int not null
);

create table DBBootCamp.TavernServices(
	TavernID int not null,
	ServiceID int not null
);

create table DBBootCamp.Guests(
	GuestID int identity(1,1) primary key,
	GuestName varchar(255) not null,
	GuestRole int not null,
);

create table DBBootCamp.TavernReceivables(
	TavernID int not null,
	SupplyID int not null,
	DateReceived varchar(255) not null,
	Amount int not null,
	Cost float not null
);

create table DBBootCamp.Roles(
	RoleID int identity(1,1) primary key,
	RoleName varchar(255) not null,
	RoleDescription varchar(255) not null
);

create table DBBootCamp.TavernSupplies(
	TavernID int not null,
	SupplyID int not null,
	Quantity int not null,
	DateUpdated varchar(255) not null
);

create table DBBootCamp.Sales(
	SaleID int identity(1,1) primary key,
	TavernID int not null,
	ServiceID int not null,
	GuestID int not null,
	SaleDate varchar(255) not null,
	Total float not null
);

create table DBBootCamp.Supplies(
	SupplyID int identity(1,1) primary key,
	SupplyName varchar(255) not null,
	Unit varchar(255) not null,
	Cost float not null
);

create table DBBootCamp.Services(
	ServiceID int identity(1,1) primary key,
	ServiceName varchar(255) not null,
	StatusID int not null,
	ServiceCost float not null
);

create table DBBootCamp.Statuses(
	StatusID int identity(1,1) primary key,
	StatusName varchar(255) not null
);