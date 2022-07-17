create table Account(
	Id nvarchar(10) primary key(Id),
	UName nvarchar(20) not null,
	PWord nvarchar(400) not null,
	FName nvarchar(50),
	Addr nvarchar(200),
	PNumber nvarchar(20),
	Email nvarchar(50),
	Descri text,
	Permiss nvarchar(200)
);

create table Premission(
	Id nvarchar(10) primary key(Id),
	KWord nvarchar(50) not null unique,
	NPermiss nvarchar(100) not null
);

create table Blog(
	Id nvarchar(10) primary key (Id),
	KWord nvarchar(50) not null unique,
	Title nvarchar(100) not null,
	Content text,
	Category nvarchar(200),
	Release bit default 0
);

create table Category(
	Id nvarchar(10) primary key(Id),
	KWord nvarchar(50),
	NCate nvarchar(50)
);

