<?php

class AdminModel extends Model
{
    public function exists($username,$password)
    {
        $result = array();
        $c1 = oci_new_cursor($this->database);
        $statement = oci_parse($this->database, "begin Client.getUser(:cursor,:user,:password); end;");
        oci_bind_by_name($statement, ":cursor", $c1, -1, OCI_B_CURSOR);
        oci_bind_by_name($statement,':user',$username);
        oci_bind_by_name($statement, ':password',$password );
        oci_execute($statement);
        oci_execute($c1);
        while (($row = oci_fetch_array($c1, OCI_ASSOC + OCI_RETURN_NULLS)) != false) {
            array_push($result, $row['ID']);
        }
        if (!empty($result))
            return $result;
        else return 0;
    }
}