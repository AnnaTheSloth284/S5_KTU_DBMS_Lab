--Create a function that accepts a character and an integer to area of a square if or a circle using the provided parameters

create or replace function areacalc(char1 in varchar2,side1 in int) return float is area1 float;
begin
	if char1='c' then
		area1:=3.14*side1*side1;
	elsif char1='s' then
		area1:=side1*side1;
	end if;
	return area1;
end;
/

begin
	dbms_output.put_line('Area of circle is: '||areacalc('c',1))
end;
