create table bank1(acno int primary key,cname varchar(20),cbal float);

insert into bank1 values(1001,'Alan',1234.56);
insert into bank1 values(1000,'Abhiraman',2400.00);
insert into bank1 values(0999,'Aarav',3127.89);

set serveroutput on;
create or replace function balgrade(bal in number) return varchar2 is vcat varchar2(10);
begin
	if bal>=3000 then
		vcat:='Platinum';
	elsif bal>=2000 and bal<3000 then
		vcat:='Gold';
	elsif bal<2000 then
		vcat:='Silver';
	end if;
	return vcat;
end;
/

select acno,cname,cbal,balgrade(cbal) as grade from bank1 order by acno;

