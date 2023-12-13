create table Sailors(sid int primary key, sname varchar(15), rating int, age int);
insert into Sailors values(200,'Sid',9,18);
insert into Sailors values(201,'Varun',8,21);
insert into Sailors values(202,'Alia',6,16);

create table Boats(bid int primary key, bname varchar(15), color varchar(15));
insert into Boats values(100,'Chaos','Red');
insert into Boats values(101,'Storm','Green');
insert into Boats values(102,'Rain','Blue');

create table Reserves(sid int, bid int, day date, foreign key(sid) references Sailors(sid), foreign key(bid) references Boats(bid));
INSERT INTO Reserves VALUES(200, 101, TO_DATE('01/10/2012', 'MM/DD/YYYY'));
INSERT INTO Reserves VALUES(201, 102, TO_DATE('01/10/2012', 'MM/DD/YYYY'));
INSERT INTO Reserves VALUES(202, 100, TO_DATE('01/10/2012', 'MM/DD/YYYY'));

--a)Find all information of sailors who have reserved boat number 101
select * from Sailors
    where sid in (
    	select sid from Reserves where bid=101
    );

--b)Find the ids of sailors who have reserved a red boat or a green boat
select sid from Sailors where sid in(
    select sid from Reserves where bid in(
    	select bid from Boats where color='Red' or color='Green'
    )
);

select * from Sailors;
select * from Boats;
select * from Reserves;

--c)Count the number of different sailor names
select count(distinct(sname)) from Sailors;

--d)Calculate the average age of all sailors.
select avg(age) from Sailors;
