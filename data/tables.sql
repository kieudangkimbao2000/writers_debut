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

drop table Blog
create table Blog(
	Id nvarchar(10) primary key (Id),
	KWord nvarchar(50) not null unique,
	Title nvarchar(100) not null,
	Content text,
	Category nvarchar(200),
	Release bit default 0,
	Id_Acc nvarchar(10) not null foreign key (Id_Acc) references Account(Id)
);

create table Category(
	Id nvarchar(10) primary key(Id),
	KWord nvarchar(50),
	NCate nvarchar(50)
);

