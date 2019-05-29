CREATE INDEX administration_flight_id ON administration(flight_id);
/
CREATE INDEX administration_airline_id ON administration(airline_id);
/
CREATE INDEX offer_card_id ON offer(card_id);
/
CREATE INDEX offer_airline_id ON offer(airline_id);
/
CREATE INDEX bought_card_passenger_id ON bought_card(passenger_id);
/
CREATE INDEX bought_card_id_card ON bought_card(id_card);
/
CREATE INDEX booking_flight_id ON booking(flight_id);
/
CREATE INDEX booking_passenger_id_id ON booking(passenger_id);
/
CREATE INDEX origin_flight_id ON origin(flight_id);
/
CREATE INDEX origin_airport_id ON origin(airport_id);
/
CREATE INDEX destination_flight_id ON destination(flight_id);
/
CREATE INDEX destination_airport_id ON destination(airport_id);
/
CREATE INDEX flights_dep_date ON flights(TRUNC(departure_date));
/
CREATE INDEX flights__arv_date ON flights(TRUNC(arrival_date));
/
CREATE INDEX passengers_cnp ON passengers(CNP);
/
