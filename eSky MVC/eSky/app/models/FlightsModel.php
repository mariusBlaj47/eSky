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
}