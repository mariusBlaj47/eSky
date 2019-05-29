<?php


class CardsModel extends Model
{
    public function getCardsByAirline($airline)
    {
        $result = array();
        $c1 = oci_new_cursor($this->database);
        $statement = oci_parse($this->database, "begin Client.getCardsByAirline(:cursor,:p1); end;");
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
        $sql = "begin Client.buy_card(:p1,:p2); end;";
        $statement = oci_parse($this->database, $sql);
        oci_bind_by_name($statement, ':p1', $cnp);
        oci_bind_by_name($statement, ':p2', $cardId);
        oci_execute($statement);
    }
}



