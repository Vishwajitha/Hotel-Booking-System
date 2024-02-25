


create table places
(
pid int primary key identity(1,1)
,pname varchar(50)
)


insert into places values('Gachibowli')
insert into places values('Shamshabad')
insert into places values('Kukatpally')
insert into places values('Habsiguda')
insert into places values('Mehdipatnam')
select * from places

update places set pname='Ameerpet' where pid=1

select * from tbl_student

create table Hotels 
(
hid int primary key identity(1,1)
,hname varchar(50)
,cid int foreign key references places(pid)
)

insert into Hotels values('Taj',7)
insert into Hotels values('Belsons',7)
insert into Hotels values('Royal Reve',7)
insert into Hotels values('Seven Lake',7)

select * from Hotels

exec sp_rename 'hotels.cid','pid','COLUMN'

create table users
(
  ID int primary key identity(1,1)
  ,Name varchar(50)
  ,EmailID varchar(50)
  ,mobile varchar(10)
  ,Doa date
  ,Dod date
  ,RoomsRequired varchar(10)
)

create proc sp_book
(
  @Name varchar(50)
  ,@EmailID varchar(50)
  ,@mobile varchar(10)
  ,@Doa date
  ,@Dod date
  ,@RoomsRequired varchar(10)
)
as begin
insert into users values(
 @Name 
  ,@EmailID 
  ,@mobile 
  ,@Doa 
  ,@Dod 
  ,@RoomsRequired 
)
end

select * from users

insert into users values('Vishwa','vish@gmail.com','9247456483','23-AUG-23','30-AUG-23','two')

create procedure sp_getBookingdata
  as begin
    select * from users
  end

  create procedure sp_getBookingById(@id int)
  as begin
    select * from users where id=@id;
  end

  create procedure sp_deleteBook(@id int) 
  as begin
    delete from users where id=@id
  end

  create proc sp_UpdateData
(
  @Name varchar(50)
  ,@EmailID varchar(50)
  ,@mobile varchar(10)
  ,@Doa date
  ,@Dod date
  ,@RoomsRequired varchar(10)
  ,@id int
)
as begin
Update users set Name=@Name 
  ,EmailID=@EmailID 
  ,mobile=@mobile 
  ,Doa=@Doa 
  ,Dod=@Dod 
  ,RoomsRequired=@RoomsRequired 
where id=@id
end

create table customers
(
  
)
