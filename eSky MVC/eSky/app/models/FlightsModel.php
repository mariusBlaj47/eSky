<?php


class FlightsModel extends Model
{
    public function getFlights($origin,$destination,$date)
    {
        $sql = "BEGIN :rez := getFlights(:or,:ds,:dt); END;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':or', $origin);
        oci_bind_by_name($statement, ':ds', $destination);
        oci_bind_by_name($statement, ':dt', $date);
        oci_bind_by_name($statement, ':rez', $result ,32000);
        oci_execute($statement);
        $result=substr($result,0,-1);
        $result=explode(';',$result);
        return $result;
    }

    public function getFlightData($flightId)
    {
        $result = array();
        $c1 = oci_new_cursor($this->database);
        $statement = oci_parse($this->database, "begin getFlightData(:cursor,:id); end;");
        oci_bind_by_name($statement, ":cursor", $c1, -1, OCI_B_CURSOR);
        oci_bind_by_name($statement,':id',$flightId);
        oci_execute($statement);
        oci_execute($c1);
        while (($row = oci_fetch_array($c1, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            array_push($result, $row);
        }
        return $result;
    }

    public function getDiscountedPrice($cnp,$flightId)
    {
        $sql = "BEGIN :rez := getDiscountedPrice(:cnp,:id); END;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':cnp', $cnp);
        oci_bind_by_name($statement, ':id', $flightId);
        oci_bind_by_name($statement, ':rez', $result,32000);
        oci_execute($statement);
        return $result;
    }

    public function addFlight()
    {}

    public function getFlightsByAirline($id)
    {
        $result = array();
        $c1 = oci_new_cursor($this->database);
        $statement = oci_parse($this->database, "begin getFlightDataByAirline(:cursor,:id); end;");
        oci_bind_by_name($statement, ":cursor", $c1, -1, OCI_B_CURSOR);
        oci_bind_by_name($statement,':id',$id);
        oci_execute($statement);
        oci_execute($c1);
        while (($row = oci_fetch_array($c1, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            array_push($result, $row);
        }
        return $result;
    }
}