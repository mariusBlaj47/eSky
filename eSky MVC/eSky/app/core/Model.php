<?php

class Model
{
    public $database = null;

    function __construct() {
        $this->database = oci_connect(DB_USER, DB_PASS, DB_NAME);
    }
}
