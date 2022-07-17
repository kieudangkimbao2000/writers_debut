create proc spud_account_insert(@Id nvarchar(10),
	@UName nvarchar(20),
	@PWord nvarchar(400),
	@FName nvarchar(50),
	@Addr nvarchar(200),
	@PNumber nvarchar(20),
	@Email nvarchar(50),
	@Descri text,
	@Permiss nvarchar(200))
as
begin
	insert into Account
	values(@Id,
	@UName,
	@PWord,
	@FName,
	@Addr,
	@PNumber,
	@Email,
	@Descri,
	@Permiss)
end

create proc spud_account_update(@Id nvarchar(10),
	@FName nvarchar(50),
	@Addr nvarchar(200),
	@PNumber nvarchar(20),
	@Email nvarchar(50),
	@Descri text,
	@Permiss nvarchar(200))
as
begin
	update Account set FName=@FName,
	Addr=@Addr,
	PNumber=@PNumber,
	Email=@Email,
	Descri=@Descri,
	Permiss=@Permiss
	where Id=@Id
end

create proc spud_permission_insert(@Id nvarchar(10),
	@KWord nvarchar(50),
	@NPermiss nvarchar(100))
as
begin
	insert into Permission
	values(@Id,
	@KWord,
	@NPermiss)
end

create proc spud_permision_update(@Id nvarchar(10),
	@KWord nvarchar(50),
	@NPermiss nvarchar(100))
as
begin
	update Permision set KWord=@KWord,
		NPermiss=@NPermiss
	where Id=@Id
end



