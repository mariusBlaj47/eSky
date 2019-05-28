<?php

class Home extends Controller
{
    public function index()
    {
        $airports_model = $this->loadModel('AirportsModel');
        $airports = $airports_model->getAirports();
        $data['airports']="";
        foreach (array_values($airports) as $airport)
        {
            $data['airports'] = $data['airports'] . '<option>'.$airport.'</option>';
        }
        $this->view('home/index',$data);
    }

}
