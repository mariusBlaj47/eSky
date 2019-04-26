<?php

error_reporting(E_ALL);
ini_set('display_errors', 'On');

$username = "ESKY";                  // Use your username
$password = "ESKY";             // and your password
$database = "localhost/XE";   // and the connect string to connect to your database



$c = oci_connect($username, $password, $database);

//$query = "select * from passengers where nationality='irish'";
if (!$c) {
    $m = oci_error();
    trigger_error('Could not connect to database: ' . $m['message'], E_USER_ERROR);
}

//$s = oci_parse($c, $query);
//
//
//oci_execute($s);



$query = 'begin test1 (:bind1); end;';

$s = oci_parse($c, $query);
oci_bind_by_name($s, ':bind1', $result,40);
oci_execute($s);

echo $result;
/*if (!$s) {
    $m = oci_error($c);
    trigger_error('Could not parse statement: ' . $m['message'], E_USER_ERROR);
} else {
    echo "<table border='1'>\n";
    while ($row = oci_fetch_array($s, OCI_ASSOC + OCI_RETURN_NULLS)) {
        echo "<tr>\n";
        foreach ($row as $item) {
            echo "    <td>" . ($item !== null ? htmlentities($item, ENT_QUOTES) : "&nbsp;") . "</td>\n";
        }
        echo "</tr>\n";
    }
    echo "</table>\n";
}

echo "<table border='1'>\n";*/

?>