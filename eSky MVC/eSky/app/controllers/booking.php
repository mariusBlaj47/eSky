<?php

class Booking extends Controller
{
    public function index()
    {
        print_r($_POST);
        $this->view('booking/index');
    }
}
