<?php

class addFlight extends Controller
{

    public function index()
    {
        session_start();
        if(!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $airlines_model = $this->loadModel('AirlinesModel');
        $airports = $airlines_model->getAirports();
        $data['airports']="";
        foreach (array_values($airports) as $airport)
        {
            $data['airports'] = $data['airports'] . '<option>'.$airport.'</option>';
        }
        $this->view('addFlight/index',$data);
    }
    public function add()
    {
        print_r($_POST);
        session_start();
        if(!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        if(isset($_POST['origin'])&&isset($_POST['destination'])&&isset($_POST['date1'])&&isset($_POST['date2'])&&isset($_POST['hour1'])&&isset($_POST['min1'])&&isset($_POST['am1'])&&isset($_POST['hour2'])&&isset($_POST['min2'])&&isset($_POST['am2'])&&isset($_POST['price'])&&isset($_POST['ensurance'])&&isset($_POST['seat']))
        {
            $date1 = date('d-M-y', strtotime($_POST['date1']));
            $date2 = date('d-M-y', strtotime($_POST['date2']));
        }
    }
}