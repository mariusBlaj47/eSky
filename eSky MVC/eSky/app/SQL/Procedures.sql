create or replace FUNCTION getFlights(
    departure_airport IN airports.name%type,
    arrival_airport   IN airports.name%type,
    leaving_date VARCHAR2)
  RETURN VARCHAR2
AS
  info          VARCHAR2(32000):=' ';
  temp_string   VARCHAR2(1000);
  flight_exists NUMBER:=0;
BEGIN
  SELECT COUNT(*)
  INTO flight_exists
  FROM flights f1
  JOIN origin o1
  ON f1.id=o1.flight_id
  JOIN airports a1
  ON o1.airport_id=a1.id
  JOIN destination d1
  ON d1.flight_id=f1.id
  JOIN airports a2
  ON d1.airport_id           =a2.id
  WHERE TRUNC(departure_date)=to_date(leaving_date,'dd-MON-yy')
  AND a1.name                =departure_airport;
  IF(flight_exists           =0)THEN
    RETURN 'not found';
  END IF;
FOR i IN
( WITH flights1(id1,price1,ens_price1,dep_date1,dep_hour1,dep_port1,arv_date1,arv_hour1,arv_port1,airline1) AS
  (SELECT f1.id                             AS "id1",
    base_price                              AS "price1",
    ensurance_price                         AS "ens_price1",
    TO_CHAR(f1.departure_date,'dd-mm-yyyy') AS "dep_date1",
    TO_CHAR(f1.departure_date,'HH24:MM')    AS "dep_hour1",
    a1.name                                 AS "dep_port1",
    TO_CHAR(f1.arrival_date,'dd-mm-yyyy')   AS "arv_date1",
    TO_CHAR(f1.arrival_date,'HH24:MM')      AS "arv_hour1",
    a2.name                                 AS "arv_port1",
    airlines.name                           AS "airline1"
  FROM flights f1
  JOIN origin o1
  ON f1.id=o1.flight_id
  JOIN airports a1
  ON o1.airport_id=a1.id
  JOIN destination d1
  ON d1.flight_id=f1.id
  JOIN airports a2
  ON d1.airport_id =a2.id
  JOIN administration
  ON administration.flight_id=f1.id
  JOIN airlines
  ON airlines.id             =administration.airline_id
  WHERE TRUNC(departure_date)=to_date(leaving_date,'dd-MON-yy')
  AND a1.name                =departure_airport
  AND a2.name                =arrival_airport
  )
SELECT * FROM flights1
)
LOOP
  info:=i.airline1|| '/' || i.dep_port1||'/'|| i.arv_port1||'/'||i.dep_hour1||'/'||i.dep_date1 || '/'|| i.arv_hour1 || '/' || i.arv_date1 ||'/'||i.price1||'/'||i.ens_price1||'/'||i.id1|| ';';
END LOOP;
FOR i IN
( WITH flights1(id1,price1,ens_price1,dep_date1,dep_hour1,dep_port1,arv_date1,arv_hour1,arv_port1,airline1) AS
  (SELECT f1.id                             AS "id1",
    base_price                              AS "price1",
    ensurance_price                         AS "ens_price1",
    TO_CHAR(f1.departure_date,'dd-mm-yyyy') AS "dep_date1",
    TO_CHAR(f1.departure_date,'HH24:MM')    AS "dep_hour1",
    a1.name                                 AS "dep_port1",
    TO_CHAR(f1.arrival_date,'dd-mm-yyyy')   AS "arv_date1",
    TO_CHAR(f1.arrival_date,'HH24:MM')      AS "arv_hour1",
    a2.name                                 AS "arv_port1",
    airlines.name                           AS "airline1"
  FROM flights f1
  JOIN origin o1
  ON f1.id=o1.flight_id
  JOIN airports a1
  ON o1.airport_id=a1.id
  JOIN destination d1
  ON d1.flight_id=f1.id
  JOIN airports a2
  ON d1.airport_id =a2.id
  JOIN administration
  ON administration.flight_id=f1.id
  JOIN airlines
  ON airlines.id             =administration.airline_id
  WHERE TRUNC(departure_date)=to_date(leaving_date,'dd-MON-yy')
  AND a1.name                =departure_airport
  ),
  flights2(id2,price2,ens_price2,dep_date2,dep_hour2,dep_port2,arv_date2,arv_hour2,arv_port2,airline2) AS
  (SELECT f1.id                             AS "id2",
    base_price                              AS "price2",
    ensurance_price                         AS "ens_price2",
    TO_CHAR(f1.departure_date,'dd-mm-yyyy') AS "dep_date2",
    TO_CHAR(f1.departure_date,'HH24:MM')    AS "dep_hour2",
    a1.name                                 AS "dep_port2",
    TO_CHAR(f1.arrival_date,'dd-mm-yyyy')   AS "arv_date2",
    TO_CHAR(f1.arrival_date,'HH24:MM')      AS "arv_hour2",
    a2.name                                 AS "arv_port2",
    airlines.name                           AS "airline2"
  FROM flights f1
  JOIN origin o1
  ON f1.id=o1.flight_id
  JOIN airports a1
  ON o1.airport_id=a1.id
  JOIN destination d1
  ON d1.flight_id=f1.id
  JOIN airports a2
  ON d1.airport_id =a2.id
  JOIN administration
  ON administration.flight_id=f1.id
  JOIN airlines
  ON airlines.id           =administration.airline_id
  WHERE TRUNC(arrival_date)<(to_date(leaving_date,'dd-MON-yy')+3)
  AND TRUNC(arrival_date)  >(to_date(leaving_date,'dd-MON-yy')-1)
  AND a2.name              =arrival_airport
  )
SELECT *
FROM flights1
JOIN flights2
ON flights1.arv_port1=flights2.dep_port2
)
LOOP
  info :=info || i.airline1|| '/' || i.dep_port1||'/'|| i.arv_port1||'/'||i.dep_hour1||'/'||i.dep_date1 || '/'|| i.arv_hour1 || '/' || i.arv_date1 ||'/'||i.price1||'/'||i.ens_price1||'/'||i.id1|| '\' || i.airline2|| '/' || i.dep_port2||'/'|| i.arv_port2||'/'||i.dep_hour2||'/'||i.dep_date2 || '/'|| i.arv_hour2 || '/' || i.arv_date2 ||'/'||i.price2||'/'||i.ens_price2||'/'||i.id2|| ';';
END LOOP;
if(to_char(length(info))=1) then
return 'not found';
end if;
RETURN info;
END;
/





create or replace PROCEDURE getUser(
    c1 OUT SYS_REFCURSOR,
    username IN admin.name%type,
    pass   IN admin.password%type)
IS
BEGIN
  OPEN c1 FOR SELECT * FROM admin where name=username and pass=admin.password;
END ;
/





create or replace PROCEDURE getFlightData(
    c1 OUT SYS_REFCURSOR,
    flightId IN flights.id%type)
IS
BEGIN
  OPEN c1 FOR SELECT * FROM flights where flights.id=flightId;
END ;
/




create or replace PROCEDURE getAirports(
    c1 OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN c1 FOR SELECT * FROM airports order by name;
END ;
/





create or replace function getDiscountedPrice(userCNP IN passengers.cnp%type,flightId IN flights.id%type) return number
as
final_price float;
discount_amount number:=12;
airlineId airlines.id%type;
begin
select airline_id,base_price into airlineID,final_price from flights f join administration a on f.id=a.flight_id where f.id=flightId;
BEGIN
select discount into discount_amount from passengers p join bought_card b on p.id=b.passenger_id join discount_cards on discount_cards.id=b.id_card join offer o on discount_cards.id=o.card_id
where p.cnp=userCNP and O.AIRLINE_ID=airlineID and expiration_date>sysdate;
EXCEPTION
      WHEN NO_DATA_FOUND THEN
        return final_price;
END;
final_price:=final_price-(discount_amount/100 * final_price);
return final_price;
end;
/





create or replace procedure create_booking(
    in_cnp IN passengers.cnp%type,
    in_first_name IN passengers.first_name%type,
    in_last_name IN passengers.last_name%type,
    in_gender IN passengers.gender%type,
    in_birth_date IN passengers.birth_date%type,
    in_nationality IN passengers.nationality%type,
    in_email IN passengers.email%type,
    in_flight_id IN booking.flight_id%type,
    in_final_price IN booking.final_price%type,
    in_ensurance IN booking.ensurance%type,
    in_luggage IN booking.luggage%type,
    in_seat IN booking.seat%type
    )
as
v_id passengers.id%type;
v_exists number;
v_passenger_id passengers.id%type;
begin

    BEGIN
    SELECT cnp into v_exists from passengers where in_cnp=cnp;
    EXCEPTION
      WHEN NO_DATA_FOUND THEN
        select count(*) into v_id from passengers;
        v_id:=v_id+1;
        insert into passengers values(v_id,in_cnp,in_first_name,in_last_name,in_gender,in_birth_date,in_nationality,in_email);
    END;
select id into v_passenger_id from passengers where cnp=in_cnp;
insert into booking values(in_flight_id,v_passenger_id,in_final_price,in_ensurance,in_luggage,in_seat);
end;
/





create or replace PROCEDURE getAirlines(
    c1 OUT SYS_REFCURSOR)
IS
BEGIN
    OPEN c1 FOR SELECT * FROM airlines order by name;
END ;
/





create or replace PROCEDURE getCardsByAirline(
    c1 OUT SYS_REFCURSOR,
    airlineName IN airlines.name%type)
IS
BEGIN
    OPEN c1 FOR SELECT d.* FROM discount_cards d join offer o on o.card_id=d.id join airlines a on a.id=o.airline_id where a.name=airlineName;
END ;
/




create or replace procedure buy_card(
    in_cnp IN passengers.cnp%type,
    in_card IN discount_cards.id%type
)
as
    v_expiration_date date;
    v_pass_id passengers.id%type;
begin
    begin
        select id into v_pass_id from passengers where cnp=in_cnp;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            RETURN;
    end;
    select (sysdate+validity) into v_expiration_date from discount_cards where id=in_card;
    insert into bought_card values(v_pass_id,in_card,v_expiration_date);
end;
/




