USE kunledatabase;
CREATE TABLE Human(
BuyerName			char(35)			NOT NULL,
Department			Char(30)			NOT NULL,
Position			Char(10)			NULL,
Supervisor			Char(35)			NULL,
CONSTRAINT			Human_PK			PRIMARY KEY(BuyerName)
);
CREATE TABLE Games (
OrderNumber			Integer			NOT NULL,
StoreNumber			Integer			NULL,
StoreZip			Char(9)			NULL,
OrderMonth			Char(12)		NOT NULL,
OrderYear			Integer			NOT NULL,
OrderTotal			Numeric(9,2)	NULL,
CONSTRAINT			Games_PK		PRIMARY KEY(OrderNumber)
);
INSERT INTO Human VALUES (
'Mary Smith',	'Purchasing',	'Manager',	NULL);
INSERT INTO Human VALUES (
'Pete Hansen',	'Purchasing',	'Human 3',	'Mary Smith');
INSERT INTO Human VALUES (
'Nancy Meyers',	'Purchasing',	'Human 1',	'Pete Hansen');
INSERT INTO Human VALUES (
'Cindy Lo',	'Purchasing',	'Human 2',	'Mary Smith');
INSERT INTO Human VALUES(
'Jerry Martin',	'Purchasing',	'Human 1,'	'Cindy Lo');	
