--Pl SQL Create a procedure to Update salary of employee  If desg is manager update salary by 5% If desg is clerk update salary by 10% ..... Like that.. Using Eid as parameter

create table emp2(Eid int primary key, Ename varchar(10),Address varchar(10), Desg varchar(10),Basic float,Da float,Other_allowances float);

insert into emp2 values(101,'A','abcd','Manager',1234.5,1000,230);
insert into emp2 values(103,'B','efgh','Clerk',1890,1030,450);

create or replace procedure salupd(eid in int) is
	begin
		for i in (select * from emp2)
		loop
			if i.Eid = eid then
				if i.desg='Manager' then
					update emp2 set da=((15*da)/10) where Eid=eid;
				elsif i.desg='Clerk' then
					update emp2 set da=((14*da)/10) where Eid=eid;
				end if;
			end if;
		end loop;
		dbms_output.put_line('Updated');
	end;
/

select * from emp2;

begin
	salupd(101);
	salupd(103);
end;
/

select * from emp2;
