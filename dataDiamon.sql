create database diamon
go
use diamon
go
create table slides
(
	id int primary key,
	img varchar(255),
	caption varchar(255),
	content varchar(255)
)
go
create table menus
(
	id int primary key,
	name varchar(255),
	url varchar(255)
)
go
create table categorys
(
	id int primary  key,
	name varchar(255),
	description varchar(255)
)
go
create table products
(
	id_product int primary key,
	id_category int references [dbo].[categorys](id),
	sizes varchar(255),
	name nvarchar(255),
	price money,
	sale int ,
	title nvarchar(255),
	highlight bit,
	new_product bit,
	details nvarchar(255),
	created_at datetime,
	updated_at datetime,
)

go
create table colors
(
	id int primary key,
	id_product int references [dbo].[products]([id_product]),
	name varchar(255),
	code varchar(255),
	img varchar(255)
)

go


create table users
(
	id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
	tendn varchar(255),
	pass varchar(255),
	display_name nvarchar(200),
	addresss varchar(255)
)

INSERT INTO categorys VALUES (1, 'Đồng hồ', NULL)
INSERT INTO categorys VALUES(2, 'Vòng tay', NULL)
INSERT INTO categorys VALUES(3, 'Dây đeo tay', NULL)
INSERT INTO categorys VALUES(4, 'Dây chuyền', NULL)
go

INSERT INTO products VALUES (2, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(3, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(4, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(5, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(6, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(7, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(8, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(9, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(10, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(11, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(12, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(13, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(14, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(20, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(21, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(22, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(23, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(24, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(25, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(26, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(27, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(28, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(16, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(17, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(18, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')
INSERT INTO products VALUES(19, 1, 'L,S,M', 'Name', '200000', 0, 'tital', 1, 0, 'details', '2020-04-09 11:38:43', '2020-04-09 11:38:43')

go

INSERT INTO colors VALUES (1, 1, 'Vàng', '#FFFF00', 'a.jpg')
INSERT INTO colors VALUES(2, 1, 'Xanh', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(3, 2, 'Vàng', '#FFFF00', 'c.jpg')
INSERT INTO colors VALUES(4, 2, 'Xanh', '#FFFF00', 'd.jpg')
INSERT INTO colors VALUES(5, 5, 'Vàng', '#FFFF00', 'e.jpg')
INSERT INTO colors VALUES(6, 6, 'Vàng', '#FFFF00', 'g.jpg')
INSERT INTO colors VALUES(7, 7, 'Vàng', '#FFFF00', 'h.jpg')
INSERT INTO colors VALUES(8, 8, 'Vàng', '#FFFF00', 'i.jpg')
INSERT INTO colors VALUES(9, 9, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(10, 10, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(11, 11, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(12, 12, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(13, 13, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(14, 14, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(15, 15, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(16, 16, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(17, 17, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(18, 18, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(19, 19, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(20, 20, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(21, 21, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(22, 22, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(23, 23, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(24, 24, 'Vàng', '#FFFF00', 'b.jpg')
INSERT INTO colors VALUES(25, 25, 'Vàng', '#FFFF00', 'b.jpg')


go
insert into menus values(1,'Home',null)
insert into menus values(2,'San Pham',null)
insert into menus values(3,'Lien he',null)
go 

insert into users values('nguyenthien','123',N'Đức thiện','Quan 12')

select * from users where users.tendn='nguyenthien'
