<?php


class CardsModel extends Model
{
    public function getCardsByAirline($airline)
    {
        $result = array();
        $c1 = oci_new_cursor($this->database);
        $statement = oci_parse($this->database, "begin getCardsByAirline(:cursor,:p1); end;");
        oci_bind_by_name($statement, ":cursor", $c1, -1, OCI_B_CURSOR);
        oci_bind_by_name($statement,':p1',$airline);
        oci_execute($statement);
        oci_execute($c1);  // Execute the REF CURSOR like a normal statement id
        while (($row = oci_fetch_array($c1, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            array_push($result, $row);
        }
        return $result;
    }

    public function addCard($cnp,$cardId)
    {
        $sql = "begin buy_card(:p1,:p2); end;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':p1', $cnp);
        oci_bind_by_name($statement, ':p2', $cardId);
        oci_execute($statement);
    }
    public function addAcard($card,$discount,$price,$validity)
    {
        $sql = "begin addCard(:p1,:p2,:p3,:p4); end;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':p1', $card);
        oci_bind_by_name($statement, ':p2', $discount);
        oci_bind_by_name($statement, ':p3', $price);
        oci_bind_by_name($statement, ':p4', $validity);
        oci_execute($statement);
    }

}



