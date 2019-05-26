create or replace PROCEDURE getAirports(c1 OUT SYS_REFCURSOR)
 IS
  BEGIN
   OPEN c1 FOR
    SELECT * from airports order by name;
END ;
/

create or replace function getFlights(departure_airport IN airports.name%type,arrival_airport IN airports.name%type,leaving_date varchar2) return varchar2 as
info varchar2(32000);
begin
for i IN (
WITH flights1(dep_date1,dep_hour1,dep_port1,arv_date1,arv_hour1,arv_port1) AS
(
select to_char(f1.departure_date,'dd-mm-yyyy') as "dep_date1",
to_char(f1.departure_date,'HH24:MM') as "dep_hour1",
a1.name as "dep_port1",
to_char(f1.arrival_date,'dd-mm-yyyy') as "arv_date1",
to_char(f1.arrival_date,'HH24:MM') as "arv_hour1",
a2.name as "arv_port1"
from flights f1 join origin o1 on f1.id=o1.flight_id join airports a1 on o1.airport_id=a1.id join destination d1 on d1.flight_id=f1.id join airports a2 on d1.airport_id=a2.id
where trunc(departure_date)=to_date(leaving_date,'dd-MON-yy') and a1.name=departure_airport
),
flights2(dep_date2,dep_hour2,dep_port2,arv_date2,arv_hour2,arv_port2) AS
(
select to_char(f1.departure_date,'dd-mm-yyyy') as "dep_date2",
to_char(f1.departure_date,'HH24:MM') as "dep_hour2",
a1.name as "dep_port2",
to_char(f1.arrival_date,'dd-mm-yyyy') as "arv_date2",
to_char(f1.arrival_date,'HH24:MM') as "arv_hour2",
a2.name as "arv_port2"
from flights f1 
join origin o1 on f1.id=o1.flight_id 
join airports a1 on o1.airport_id=a1.id 
join destination d1 on d1.flight_id=f1.id 
join airports a2 on d1.airport_id=a2.id
where trunc(arrival_date)<(to_date(leaving_date,'dd-MON-yy')+3) and trunc(arrival_date)>to_date(leaving_date,'dd-MON-yy') and a2.name=arrival_airport
)
select * from flights1,flights2 where flights1.dep_date1 is not null and flights2.dep_date2 is not null and arv_port1=dep_port2
)
LOOP
--if(i.arv_port1 = arrival_airport)
--then
info:=info || i.dep_date1||'/'||i.dep_hour1 || '/' || i.dep_port1 || '/'|| i.arv_date1 || '/' || i.arv_hour1 ||'/'|| i.arv_port1 || ';' || i.dep_date2||'/'||i.dep_hour2 || '/' || i.dep_port2 || '/'|| i.arv_date2 || '/' || i.arv_hour2 ||'/'|| i.arv_port2 ||'!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!';
--end if;
END LOOP;
return info;
end;
/
