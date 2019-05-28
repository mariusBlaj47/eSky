<?php

class Login extends Controller
{
    public function index()
    {
        session_start();
        if(isset($_SESSION['id']))
            header('Location: ' . URL . 'addFlight');
        $this->view('login/index');
    }

    public function checkUser()
    {
        if(isset($_POST['user'])&&isset($_POST['pass']))
        {
            $admin_model=$this->loadModel('AdminModel');
            $id=$admin_model->exists($_POST['user'],$_POST['pass']);
            if($id>0)
            {
                session_start();
                $_SESSION['id']=$id;
                header('Location: ' . URL . 'addFlight');
            }
            else
            {
                header('Location: ' . URL . 'Login');
            }
        }
    }

    public function logout()
    {
        session_start();
        unset($_POST['id']);
        header('Location: ' . URL . 'Home');
    }
}
