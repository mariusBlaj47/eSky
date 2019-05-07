<?php

class Flights extends Controller
{
    public function index()
    {
        $myDate = $_POST['date'];
        $myDate = date('d-m-Y', strtotime($myDate . ' +1 day'));
        echo 'date after adding 1 day: ' . $myDate;
        print_r($_POST);
    }
}
