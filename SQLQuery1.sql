

--1. Academy databazasını yaradın - 2 bala
Create Database Academy
Use Academy
--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), təkrar qrup adı əlavə etmək olmasın - 5 bal

create table Groups
{
int Id,
nvarchar(100) Name  identity unique,
}

create table Students
{ 
 int Id,
 nvarchar(100) Name  identity unique,
 nvarchar(100) SurName,
 int GroupId Foreign Key References Groups(Id)
}
--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal
alter table Students
Add int Grade 

--4. Groups table-na 3 data(P133,P229,P221), Students table-na 4 data əlavə edin(1 tələbə P229 qrupna, 3 tələbə P133   qrupuna aid olsun) - 5 bal
insert into table Groups
{
(1,P133),
(2,P229),
(3,P221),
}

insert into table Students
{
(1,Fatima,Gaykhanova,2),
(2,Sadigkhan,Gaykhanov,1),
(3,Kamala,Gaykhanova,1),
(4,Eldar,Gaykhanov,1),
}


--5. P133 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal

Select * from Students Where GroupId=1
  

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal
Select GroupId ,count(*) as Edet  from Students Groups by GroupId 

--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal
create view usv_GetAll
As
Select s.Id


--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal

--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal