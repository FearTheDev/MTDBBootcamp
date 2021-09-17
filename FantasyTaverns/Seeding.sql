use FantasyTaverns;

-- PLEASE WAIT TO BE SEEDED..

-- Seeding Guests
insert into DBBootCamp.Guests (GuestName, GuestRole) values ('Steve', 1);
insert into DBBootCamp.Guests (GuestName, GuestRole) values ('Sally', 2);
insert into DBBootCamp.Guests (GuestName, GuestRole) values ('George', 3);
insert into DBBootCamp.Guests (GuestName, GuestRole) values ('Vivica', 4);
insert into DBBootCamp.Guests (GuestName, GuestRole) values ('Zeus', 5);

-- Seeding Locations
insert into DBBootCamp.Locations (LocationName) values ('Cloudy Hilltop');
insert into DBBootCamp.Locations (LocationName) values ('Misty Valley');
insert into DBBootCamp.Locations (LocationName) values ('Musky Bog');
insert into DBBootCamp.Locations (LocationName) values ('Thrick Forest');
insert into DBBootCamp.Locations (LocationName) values ('Vulcano Island');

-- Seeding Roles
insert into DBBootCamp.Roles (RoleName, RoleDescription) values ('Adventurer', 'A curious explorer.');
insert into DBBootCamp.Roles (RoleName, RoleDescription) values ('Rogue', 'A vigilante that is quick to the slit.');
insert into DBBootCamp.Roles (RoleName, RoleDescription) values ('Mage', 'A wielder of elements.');
insert into DBBootCamp.Roles (RoleName, RoleDescription) values ('Fighter', 'A true spirited champion.');
insert into DBBootCamp.Roles (RoleName, RoleDescription) values ('Cook', 'A chef of esquisite talent.');

-- Seeding Sales
insert into DBBootCamp.Sales (TavernID, ServiceID, GuestID, SaleDate, Total) values (1, 1, 3, '10/30/1854', 30.00);
insert into DBBootCamp.Sales (TavernID, ServiceID, GuestID, SaleDate, Total) values (2, 2, 1, '10/30/1854', 30.00);
insert into DBBootCamp.Sales (TavernID, ServiceID, GuestID, SaleDate, Total) values (3, 3, 2, '10/30/1854', 30.00);
insert into DBBootCamp.Sales (TavernID, ServiceID, GuestID, SaleDate, Total) values (4, 4, 4, '10/30/1854', 30.00);
insert into DBBootCamp.Sales (TavernID, ServiceID, GuestID, SaleDate, Total) values (5, 5, 5, '10/30/1854', 30.00);

-- Seeding Services
insert into DBBootCamp.Services (ServiceName, StatusID, ServiceCost) values ('Weapon Training', 1, 30.00);
insert into DBBootCamp.Services (ServiceName, StatusID, ServiceCost) values ('Enchanting', 2, 100.00);
insert into DBBootCamp.Services (ServiceName, StatusID, ServiceCost) values ('Blacksmith', 3, 50.00);
insert into DBBootCamp.Services (ServiceName, StatusID, ServiceCost) values ('Chef Training', 4, 20.00);
insert into DBBootCamp.Services (ServiceName, StatusID, ServiceCost) values ('Hide n Seek', 5, 30.00);

-- Seeding Statuses
insert into DBBootCamp.Statuses (StatusName) values ('Active');
insert into DBBootCamp.Statuses (StatusName) values ('Inactive');
insert into DBBootCamp.Statuses (StatusName) values ('Under Maintenance');
insert into DBBootCamp.Statuses (StatusName) values ('Discontinued');
insert into DBBootCamp.Statuses (StatusName) values ('Transfered');

-- Seeding Supplies
insert into DBBootCamp.Supplies (SupplyName, Unit, Cost) values ('Water', 'Pint', 2.00);
insert into DBBootCamp.Supplies (SupplyName, Unit, Cost) values ('Ale', 'Barrel', 30.00);
insert into DBBootCamp.Supplies (SupplyName, Unit, Cost) values ('Enchanting Stones', 'pound', 10.00);
insert into DBBootCamp.Supplies (SupplyName, Unit, Cost) values ('Weapon', 'mint', 130.00);
insert into DBBootCamp.Supplies (SupplyName, Unit, Cost) values ('Stew', 'Bowl', 5.00);

-- Seeding TavernBasementRats
insert into DBBootCamp.TavernBasementRats (RatName, TavernID) values ('Luna', 1);
insert into DBBootCamp.TavernBasementRats (RatName, TavernID) values ('Guy', 2);
insert into DBBootCamp.TavernBasementRats (RatName, TavernID) values ('Morgan', 3);
insert into DBBootCamp.TavernBasementRats (RatName, TavernID) values ('Dexter', 4);
insert into DBBootCamp.TavernBasementRats (RatName, TavernID) values ('Bobby', 5);

-- Seeding TavernReceivables
insert into DBBootCamp.TavernReceivables (TavernID, SupplyID, DateReceived, Amount, Cost) values (1, 1, '10/30/1854', 3, 75.00)
insert into DBBootCamp.TavernReceivables (TavernID, SupplyID, DateReceived, Amount, Cost) values (2, 2, '10/30/1854', 3, 75.00)
insert into DBBootCamp.TavernReceivables (TavernID, SupplyID, DateReceived, Amount, Cost) values (3, 3, '10/30/1854', 3, 75.00)
insert into DBBootCamp.TavernReceivables (TavernID, SupplyID, DateReceived, Amount, Cost) values (4, 4, '10/30/1854', 3, 75.00)
insert into DBBootCamp.TavernReceivables (TavernID, SupplyID, DateReceived, Amount, Cost) values (5, 5, '10/30/1854', 3, 75.00)

-- Seeding Taverns
insert into DBBootCamp.Taverns (TavernName, LocationID, OwnerID, FloorCount) values ('The Eclipse', 1, 2, 2);
insert into DBBootCamp.Taverns (TavernName, LocationID, OwnerID, FloorCount) values ('Dine n Dash', 2, 1, 3);
insert into DBBootCamp.Taverns (TavernName, LocationID, OwnerID, FloorCount) values ('Neverstale Ale', 3, 3, 1);
insert into DBBootCamp.Taverns (TavernName, LocationID, OwnerID, FloorCount) values ('Inn n Out', 4, 5, 2);
insert into DBBootCamp.Taverns (TavernName, LocationID, OwnerID, FloorCount) values ('Whole Hog Inn', 5, 4, 4);

-- Seeding TavernServices
insert into DBBootCamp.TavernServices (TavernID, ServiceID) values (1,2);
insert into DBBootCamp.TavernServices (TavernID, ServiceID) values (2,1);
insert into DBBootCamp.TavernServices (TavernID, ServiceID) values (3,3);
insert into DBBootCamp.TavernServices (TavernID, ServiceID) values (4,4);
insert into DBBootCamp.TavernServices (TavernID, ServiceID) values (5,5);

-- Seeding TavernSupplies
insert into DBBootCamp.TavernSupplies (TavernID, SupplyID, Quantity, DateUpdated) values (1, 2, 3, '10/30/1854');
insert into DBBootCamp.TavernSupplies (TavernID, SupplyID, Quantity, DateUpdated) values (2, 1, 3, '10/30/1854');
insert into DBBootCamp.TavernSupplies (TavernID, SupplyID, Quantity, DateUpdated) values (3, 3, 3, '10/30/1854');
insert into DBBootCamp.TavernSupplies (TavernID, SupplyID, Quantity, DateUpdated) values (4, 4, 3, '10/30/1854');
insert into DBBootCamp.TavernSupplies (TavernID, SupplyID, Quantity, DateUpdated) values (5, 5, 3, '10/30/1854');

-- Seeding Users
insert into DBBootCamp.Users (UserName, UserRole, UserDescription) values ('Henry Dash', 2, 'Fastest rogue around!');
insert into DBBootCamp.Users (UserName, UserRole, UserDescription) values ('Molly Sue', 1, 'Quarky little adventurer.');
insert into DBBootCamp.Users (UserName, UserRole, UserDescription) values ('Jack Daniels', 3, 'Clumsy but quick!');
insert into DBBootCamp.Users (UserName, UserRole, UserDescription) values ('Hank Hill', 4, 'King of the grill.');
insert into DBBootCamp.Users (UserName, UserRole, UserDescription) values ('Amber Leigh', 5, 'Deals so good you would think you were robbed.');