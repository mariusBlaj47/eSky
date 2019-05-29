<?php

class addFlight extends Controller
{

    public function index()
    {
        session_start();
        if(!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $airlines_model = $this->loadModel('AirportsModel');
        $airports = $airlines_model->getAirports();
        $data['airports']="";
        foreach (array_values($airports) as $airport)
        {
            $data['airports'] = $data['airports'] . '<option>'.$airport.'</option>';
        }
        $data['header']=$this->getAdminHeader();
        $this->view('addFlight/index',$data);
    }
    public function add()
    {
        session_start();
        if(!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        if(isset($_POST['origin'])&&isset($_POST['destination'])&&isset($_POST['date1'])&&isset($_POST['date2'])&&isset($_POST['hour1'])&&isset($_POST['min1'])&&isset($_POST['am1'])&&isset($_POST['hour2'])&&isset($_POST['min2'])&&isset($_POST['am2'])&&isset($_POST['price'])&&isset($_POST['ensurance'])&&isset($_POST['seat']))
        {
            if(strcmp($_POST['am1'],'PM')==0)
            if($_POST['hour1']==12)
                $date1 = date('d-M-y', strtotime($_POST['date1'])) . ' 00:' . $_POST['min1'];
            else{$_POST['hour1']=$_POST['hour1']+12;
                $date1 = date('d-M-y', strtotime($_POST['date1'])) . ' ' . $_POST['hour1'] . ':' . $_POST['min1'];
            }
            else $date1 = date('d-M-y', strtotime($_POST['date1'])) . ' ' . $_POST['hour1'] . ':' . $_POST['min1'];
            if(strcmp($_POST['am2'],'PM')==0)
                if($_POST['hour2']==12)
                    $date2 = date('d-M-y', strtotime($_POST['date2'])) . ' 00:' . $_POST['min2'];
                else{$_POST['hour1']=$_POST['hour1']+12;
                    $date2 = date('d-M-y', strtotime($_POST['date2'])) . ' ' . $_POST['hour2'] . ':' . $_POST['min2'];
                }
            else $date2 = date('d-M-y', strtotime($_POST['date2'])) . ' ' . $_POST['hour2'] . ':' . $_POST['min2'];
            $flight_model=$this->loadModel('flightsmodel');
            $id = $_SESSION['id'][0];
            $flight_model->addFlight($_POST['origin'],$_POST['destination'],$date1,$date2,$_POST['price'],$_POST['ensurance'],$_POST['seat'],$id);
            header('Location: ' . URL . 'addFlight');
        }
    }
}