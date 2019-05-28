<?php

class searchCards extends Controller
{
    public function index()
    {
        $airlines_model = $this->loadModel('AirlinesModel');
        $airports = $airlines_model->getAirlines();
        $data['airports']="";
        foreach (array_values($airports) as $airport)
        {
            $data['airports'] = $data['airports'] . '<option name="'.$airport.'">'.$airport.'</option>';
        }
        $data['header']=$this->getClientHeader();
        $this->view('searchCards/index',$data);
    }
}
