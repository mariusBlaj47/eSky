<?php

class addCard extends Controller
{

    public function index()
    {
        session_start();
        if (!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $card_model = $this->loadModel('CardsModel');
        $data['header']=$this->getAdminHeader();
        $this->view('addCard/index',$data);
    }
    public function add()
    {
        session_start();
        if (!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        if(!(isset($_POST['card'])&&isset($_POST['discount'])&&isset($_POST['price'])&&isset($_POST['validity'])))
            header('Location: ' . URL . 'addFlight');
        $cards_model=$this->loadModel('CardsModel');
        $cards_model->addAcard($_POST['card'],$_POST['discount'],$_POST['price'],$_POST['validity']);
        header('Location: ' . URL . 'addFlight');
    }
}