<?php

class Flights extends Controller
{
    public function index()
    {
        /*$myDate = $_POST['date'];
        $myDate = date('d-m-Y', strtotime($myDate . ' +1 day'));
        echo 'date after adding 1 day: ' . $myDate;*/
        print_r($_POST);

        $origin="Henri Coanda International Airport";
        $destination="Avram Iancu International Airport Cluj";
        $date="10-JUL-19";
        $flights_model = $this->loadModel('FlightsModel');
        $flights_model->getFlights($origin,$destination,$date);
        $this->view('flights/index');
    }
}
