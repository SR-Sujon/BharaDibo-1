drop database BharaDibo_DB
drop table Product
drop table Comment
drop table OrderList
drop table ContactUs
drop table Customer


create database BharaDibo_DB
use BharaDibo_DB


create table Customer(
	CUSEmail varchar(50) primary key NOT NULL,
	CUSName varchar(20) NOT NULL,
	CUSPassword varchar (20) NOT NULL,
	CUSContactNo  varchar(11) NULL,
	CUSAddress  varchar(100) NULL,
	CUSDOB datetime,
	CUSStartingDate datetime,
	CUSRating float(3) default 0,
	CUSBalance int default 0
);


Create table Product(
	PRID int primary key identity(1000,1),
	PRName varchar(50),
	PRImage varchar(50),
	PRType varchar(20),
	PRDescription varchar(8000),
	PRPrize Decimal(8,2),
	PRRating Numeric (3,2),
	PRQuantity int
)

/*
Create table Product(
	PRID int primary key identity(1000,1),
	CUSEmail varchar(50) FOREIGN KEY REFERENCES Customer(CUSEmail),
	PRName varchar(50),
	PRImage varchar(50),
	PRType varchar(20),
	PRDescription varchar(8000),
	PRPrice Decimal(8,2),
	PRQuantity int
)
*/

/*
insert into Users values('Karim', 'karim@gmail.com', '123456','01619253055','123/2/D, Agargaon','1999-11-11','2022-01-11','0.0','0');
insert into Users values('Rahim', 'rahim@gmail.com', '123456','01719253055','444/2/D, Agargaon','2001-11-11','2022-01-15','0.0','0');
insert into Users values('Sayem', 'Sayem@gmail.com', '123456','01819253055','555/2/D, Agargaon','2003-11-11','2022-01-16','0.0','0');
select * from Users;
*/


Insert into Customer(CUSEmail,CUSName,CUSPassword,CUSContactNo,CUSAddress,CUSDOB,CUSStartingDate,CUSRating,CUSBalance) Values
('ABC@gmail.com','ABC','123456789','01619253055','123/2/D, Agargaon','1999-11-11','2022-01-11','0.0','0'),
('rabab@gmail.com','rrrabab','123456','01719253055','444/2/D, Dhanmondi','1998-07-20','2022-08-15','0.0','0')

Insert into Product(PRName,PRImage,PRType,PRDescription,PRPrize,PRRating,PRQuantity)
Values('Akai MPK Mini-III','akai.jpg','Keyboard','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',5000.00,5,5),
	('Alesis VI25','alesisVI25.png','Keyboard','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',4000.00,4.40,6),
	('Yamaha PSR 295','yamaha.jpg','Keyboard','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',75000.00,4.39,4),
	('Yamaha Grand','yamaha grand.png','Piano','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',60000.00,4.53,5),
	('Steinway Grand','steinway.jpg','Piano','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',13000,0,7),
	('Roland V-Combo','roland.jpg','Keyboard','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',1000,3.6,8)

Insert into Product(PRName,PRImage,PRType,PRDescription,PRPrize,PRRating,PRQuantity)
Values('Alesis Nitro Mesh Electric Drumkit','anm.jpeg','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',4000,5,8),
('Pearl Roadshow','pearl.jpg','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',3500,5,8),
('Tama Club','tama.png','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',5000,5,8),
('Tabla','tabla.jpg','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',4000,5,8),
('Tambourine','t2.jpg','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',40,5,8),
('Ziljdian Cymbals','cymbal.png','Drums','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',400,5,8)

Insert into Product(PRName,PRImage,PRType,PRDescription,PRPrize,PRRating,PRQuantity)
Values('Rickenbecker 4003S','4003S.jpg','Bass','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',40000,5,8),
('Ibanez Bass','ibanezbass.jpg','Bass','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',2000,5,8),
('Fender Mustang® Bass','fenderbass.jpg','Bass','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',50000,5,8),
('Yamaha BB P34','yamahabass.jpg','Bass','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',13000,5,8),
('Maharaja Sitar','sitar.png','Sitar','This is a great product especially for the money. For many users, nothing short of the best this brand has to offer will do. The price tag may be higher, but these American products are among the best in the world.',7000,4.8,8)


Insert into Product(PRName,PRImage,PRType,PRDescription,PRPrize,PRRating,PRQuantity)
Values('Gibson Les Paul','gibsonlespaul.png','Guitar','The Gibson Les Paul is a solid body electric guitar that was first sold by the Gibson Guitar Corporation in 1952.',40000,5,8),
('Fender Stratocaster','fenderstrat.jpg','Guitar','The Fender Stratocaster, colloquially known as the Strat, is a model of electric guitar designed from 1952 into 1954 by Leo Fender, Bill Carson, George Fullerton, and Freddie Tavares.',2000,5,8),
('Epiphone Les Paul','epiphonelespaul.jpg','Guitar','The Epiphone Les Paul is a solid body guitar line produced by Epiphone as a more modestly priced version of the famous Gibson Les Paul.',50000,5,8),
('Gibson ES','gibsones.png','Guitar','The Gibson ES-335 is the worlds first commercial semi-hollowbody electric guitar, sometimes known as semi-acoustic.',13000,5,8),
('Gibson SG','gibsonsg.png','Guitar','Gibson SG is a world class guitar; a solid-body electric guitar model introduced by Gibson in 1961 as the Gibson Les Paul SG.',7000,4.8,8)

Insert into Product(PRName,PRImage,PRType,PRDescription,PRPrize,PRRating,PRQuantity)
Values('Harry Potter','hp.png','Book','For the first time ever, J.K. Rowling’s 7 bestselling books are available in a stunning paperback boxed set! The ultimate Harry Potter collection for fans of all ages!',39,5,11),
('To Kill a Mockingbird','to kill.png','Book','The unforgettable novel of a childhood in a sleepy Southern town and the crisis of conscience that rocked it, first published in 1960.',13,4.7,18),
('Lord of the Rings','lotr.png','Book','When Thorin Oakenshield and his dwarves embark upon a dangerous quest to reclaim the hoard of gold, Gandalf suggests Bilbo Baggins.',95,5,8),
('The Alchemist','thealchemist.png','Book','The Alchemist by Paulo Coelho continues to change the lives of its readers forever.',12,4.8,12),
('Around the World in 80 Days','around.png','Book','Around the World in Eighty Days is a classic adventure novel by the French writer Jules Verne, published in 1873.',7,4.8,8),
('Dune','dune.png','Book','Perfect for longtime fans and new readers alike—a beautiful trade paperback boxed set of the first six novels in Frank Herbert''s Dune Saga.',55,5,18),
('The Foundation','foundation.png','Book','This book set contains the complete collection of 7 books of The Foundation series.',58,5,18)

Create table OrderList(
	OrderID int primary key identity(1,1),
	itemName varchar(500) NOT NULL,
	totalPrice int  Not Null,
	cusEmail varchar(500) Not Null
)


Create table ContactUs(
	ContactID int primary key identity(10000,1),
	FullName varchar(50) NOT NULL,
	Email varchar(50) NOT NULL,
	ContactMessage varchar(5000) NOT NULL
)

Create table Comment(
CommentID int primary key identity(100,1),
ProductID int Not Null,
CustName varchar (50) Not Null,
CommentMessage varchar(5000) Not Null
)

select * from Product
select * from Customer
select * from OrderList

