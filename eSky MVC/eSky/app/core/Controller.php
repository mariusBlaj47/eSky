<?php

class Controller
{
    public function loadModel($model)
    {
        require_once 'app/models/'.$model.'.php';
        return new $model();
    }

    public function view($view,$data=[])
    {
        require_once 'app/includes/header.php';
        require_once 'app/views/'.$view.'.php';
    }
}
