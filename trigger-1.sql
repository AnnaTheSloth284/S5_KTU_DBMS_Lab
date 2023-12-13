--Create a trigger to convert ename to uppercase before insertion to table
--EMP(ENAME varchar(20), SAL number(8))
create table EMP(ENAME varchar(20), SAL number(8));

create or replace trigger trig1 before insert on EMP for each row
declare
	msg varchar(20);
begin
	if inserting then
		update EMP set ENAME=upper(ENAME);
	end if;
end;
/

insert into EMP values('anna',234);
insert into EMP values('basil',453);

select * from EMP;



