<?php

class Confirmed extends Controller
{
    public function index()
    {
        $data['header']=$this->getClientHeader();
        $this->view('confirmed/index',$data);
    }
}
