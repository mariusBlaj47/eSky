<?php

class BookingModel extends Model
{
    public function createBooking($cnp, $fname, $lname, $gender, $bday, $nationality, $email, $flightId, $price, $ensurance, $luggage, $seat)
    {
        $sql = "begin create_booking(:p1,:p2,:p3,:p4,:p5,:p6,:p7,:p8,:p9,:p10,:p11,:p12); end;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':p1', $cnp);
        oci_bind_by_name($statement, ':p2', $fname);
        oci_bind_by_name($statement, ':p3', $lname);
        oci_bind_by_name($statement, ':p4', $gender);
        oci_bind_by_name($statement, ':p5', $bday);
        oci_bind_by_name($statement, ':p6', $nationality);
        oci_bind_by_name($statement, ':p7', $email);
        oci_bind_by_name($statement, ':p8', $flightId);
        oci_bind_by_name($statement, ':p9', $price);
        oci_bind_by_name($statement, ':p10', $ensurance);
        oci_bind_by_name($statement, ':p11', $luggage);
        oci_bind_by_name($statement, ':p12', $seat);
        oci_execute($statement);
    }
}