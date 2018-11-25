create Database SQLPRACTICE
 create table StudentData1
 (id int  not null,
 Name varchar(50),
 Adress varchar(50),
 primary key(id)
 )

 insert into StudentData1(id,Name,Adress)
  values(1, 'Savan','Bijapur');

  insert into StudentData1(id,Name,Adress)
  values(2, 'Ravan','Bidar');

  insert into StudentData1(id,Name,Adress)
  values(3, 'Jeevan','Banglore');

  select * from StudentData1


  Create table MarksDetails
  (
  id int,
  Subject varchar(20),
  Marks int,
  foreign key(id) References StudentData1(id)
  )


  insert into MarksDetails(id,Subject,Marks)
  values(1,'Java',20)

  insert into MarksDetails(id,Subject,Marks)
  values(2,'c',21)

  insert into MarksDetails(id,Subject,Marks)
  values(3,'C#',22)

  


  select * from StudentData1 st
  Full outer join MarksDetails M
  on st.id=M.id


  insert into StudentData1(id,Name,Adress)
  values(4,'pranav','Bijapur')



  select distinct Adress from StudentData1

  select Count(Distinct Adress) as  AdressCount
   from StudentData1

   select * from StudentData1
   where id=1;
   
   insert into MarksDetails(id,Subject,Marks)
   Values(4,'Datastructure',22)


   select * from MarksDetails


   Delete from MarksDetails where id=4

   insert into MarksDetails(id,Subject,Marks)
   values(4, 'Java',20)

   select * from MarksDetails
   where Subject='Java' AND Marks=20

   select * from StudentData1 st
   Full join MarksDetails m on st.id=m.id


    select * from StudentData1 st
   left join MarksDetails m on st.id=m.id


   insert into StudentData1(id,Name,Adress)
   values (5,'Kana','Hyderabad')

   select * from StudentData1 st
   right join MarksDetails m on st.id=m.id


   select * from StudentData1
   where Adress='Bijapur' or Adress='Banglore'

   select * from StudentData1
   where Not Adress='Bijapur' and not adress='Banglore'
  

  select * from StudentData1
  order by Name asc

  select * from StudentData1 s
  join MarksDetails m on s.id=m.id
  order by Adress asc,Marks desc;

   select * from StudentData1 s
  join MarksDetails m on s.id=m.id
  order by Marks asc,Adress asc;


  insert into StudentData1
  values(6,'Raj','Bidar')

  insert into StudentData1(id,Name)
  values(7,'Ram')

  insert into MarksDetails(Subject,Marks)
  values('Java',23)

  select * from StudentData1 st
   right  join MarksDetails m on st.id=m.id

  select top 50 percent * from StudentData1

  select * from StudentData1
  where id>3;

  select MAX(Marks) as Maxmarks  from MarksDetails 

  select id from MarksDetails
  where Marks=Max(Marks)
 
 select AVG(Marks)
 from MarksDetails

  select Sum(Marks)
  From MarksDetails

  select * from StudentData1
  where Adress Like '%e'



  
  select * from StudentData1
  where name Like'%ar%'

  select * from StudentData1
  where Name like '_e%'
   
    select * from StudentData1
  where Name like '_a%'
   

   select * from StudentData1
   where Name like
    'R_%_%_%'


   select * from StudentData1
   where Name Like 'R%n'

   select * from StudentData1
   where Name like'[Sp]%'

   select * from StudentData1
   where Adress in('Bijapur')


   select id from StudentData1
   UNION
   select id from MarksDetails
   order by id desc

   --group by--
   select Count(id),Name
   from StudentData1
   Group by Name

   select Count(id),Adress
   from StudentData1
   Group by Adress
   order by Count(id)


   select * from MarksDetails

   Alter table MarksDetails
   add Aid int  

   update MarksDetails
   set Aid=1
   where id=1

   update MarksDetails
   set Aid=2
   where id=2


   update MarksDetails
   set Aid=3
   where id=3

   update MarksDetails
   set Aid=4
   where id=4




  use sql4
  select * from books1

   select * from labour

    select * from Student

Create Procedure StudentInformation
as
 select * from   Student
 go


   exec StudentInformation


