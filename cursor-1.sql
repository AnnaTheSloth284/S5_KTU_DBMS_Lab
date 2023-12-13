create table electricity(custno int);
insert into electricity values(1000);

accept x prompt 'Enter customer number: ';
declare
	cursor ele is select custno from electricity;
	bill float;
	cho int;
begin
    cho:=&x;
	for i in ele loop
		if i.custno=cho then
			bill:=100;
		end if;
	end loop;
	dbms_output.put_line('Consumer no:'||cho);
	dbms_output.put_line('Bill: '||bill);
end;
/
