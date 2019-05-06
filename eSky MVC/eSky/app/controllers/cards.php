<?php

class Cards extends Controller
{
    public function index()
    {
        $airlines_model = $this->loadModel('AirlinesModel');
        $airports = $airlines_model->getAirports();
        $data['airports']="";
        foreach (array_values($airports) as $airport)
        {
            $data['airports'] = $data['airports'] . '<option>'.$airport.'</option>';
        }
        $this->view('cards/index',$data);
    }
}
