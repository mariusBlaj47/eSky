create or replace PROCEDURE getAirports(
    c1 OUT SYS_REFCURSOR)
IS
BEGIN
  OPEN c1 FOR SELECT * FROM airports order by name;
END ;
/
create or replace FUNCTION getFlights(
    departure_airport IN airports.name%type,
    arrival_airport   IN airports.name%type,
    leaving_date VARCHAR2)
  RETURN VARCHAR2
AS
  info          VARCHAR2(32000);
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
RETURN info;
END;
/
