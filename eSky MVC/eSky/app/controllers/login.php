<?php

class Login extends Controller
{
    public function index()
    {
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
}
