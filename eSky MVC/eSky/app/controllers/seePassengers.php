<?php

class addCard extends Controller
{

    public function index()
    {
        session_start();
        if (!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $passenger_model = $this->loadModel('CardsModel');
        $data['header'] = $this->getAdminHeader();
        $this->view('addCard/index', $data);
    }
}