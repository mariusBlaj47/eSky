<?php

class Controller
{
    public function loadModel($model)
    {
        require_once 'app/models/' . $model . '.php';
        return new $model();
    }

    public function view($view, $data = [])
    {
        require_once 'app/views/' . $view . '.php';
    }

    public function getClientHeader()
    {
        $header = '';
        $header = $header . '<div>';
        $header = $header . '<h1><a href="' . URL . 'Home"><img src="' . URL . 'public/images/logo.png" alt="logo"></a></h1 ></div>';
        $header = $header . '<ul>';
        $header = $header . '<li><a href = "' . URL . 'Home" > Search Flight</a></li>';
        $header = $header . '<li><a href = "' . URL . 'searchCards" > Search Cards</a></li>';
        $header = $header . '<li><a href = "' . URL . 'Login" > Admin Login</a></li>';
        $header = $header . '</ul>';
        return $header;
    }

    public function getAdminHeader()
    {
        $header = '';
        $header = $header . '<div>';
        $header = $header . '<h1><a href="' . URL . 'addFlight"><img src="' . URL . 'public/images/logo.png" alt="logo"></a></h1 ></div>';
        $header = $header . '<ul>';
        $header = $header . '<li><a href = "' . URL . 'addFlight" > Add Flight</a></li>';
        $header = $header . '<li><a href = "' . URL . 'addCard" > Add Card</a></li>';
        $header = $header . '<li><a href = "' . URL . 'Login/logout" > LogOut</a></li>';
        $header = $header . '</ul>';
        return $header;
    }
}
