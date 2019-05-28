<?php

class Cards extends Controller
{
    public function index()
    {
        if (!(isset($_POST['cnp']) && isset($_POST['airline']))) {
            header('Location: ' . URL . 'Home');
        }
        $cards_model = $this->loadModel('CardsModel');
        $result = $cards_model->getCardsByAirline($_POST['airline']);
        $data['cards']='';
        foreach ($result as $item) {
            $data['cards']=$data['cards'] . $this->createCard($_POST['cnp'],$item['ID'],$item['NAME'],$item['DISCOUNT'],$item['VALIDITY'],$item['PRICE']);
        }
        $data['airline'] = $_POST['airline'];
        $this->view('cards/index',$data);
    }

    public function addCard()
    {
        if (!(isset($_POST['cnp']) && isset($_POST['cardId'])))
            header('Location: ' . URL . 'Home');
        $cards_model=$this->loadModel('CardsModel');
        $cards_model->addCard($_POST['cnp'],$_POST['cardId']);
        header('Location: ' . URL . 'Home');
    }

    private function createCard($cnp,$id,$name,$discount,$validity,$price)
    {
        $text = '';
        $text = $text . '<div class="p-2">';
        $text = $text . '<div class="row">';
        $text = $text . '<div class="col-sm-10">';
        $text = $text . '<h4 class="text-center" id="title">' . $name . '</h4>';
        $text = $text . '<h4 class="text-center" id="title2">Discount : ' . $discount . '%</h4>';
        $text = $text . '<h4 class="text-center" id="title2">Validity : ' . $validity . ' days</h4>';
        $text = $text . '</div>';


        $text = $text . '<div class="col-sm-2">';
        $text = $text . '<div class="d-flex flex-column-reverse">';


        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<form action="' . URL . 'Cards/addCard" method="post">';
        $text = $text . '<input type="hidden" name="cardId" value="' . $id . '">';
        $text = $text . '<input type="hidden" name="cnp" value="' . $cnp . '">';
        $text = $text . '<div class="form-btn">';
        $text = $text . '<button class="submit-btn">Buy Card</button>';
        $text = $text . '</div>';
        $text = $text . '</form>';
        $text = $text . '</div>';

        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<div class="price">' . $price . '€</div>';
        $text = $text . '</div>';

        $text = $text . '</div>';
        $text = $text . '</div>';

        $text = $text . '</div>';
        $text = $text . '</div>';
        return $text;
    }
}
