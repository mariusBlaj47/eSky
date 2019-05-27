<?php

class addFlight extends Controller
{
    public function index()
    {
        session_start();
        if(!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $this->view('addFlight/index');
    }
}