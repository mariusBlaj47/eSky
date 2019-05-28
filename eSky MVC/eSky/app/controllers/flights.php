<?php

class Flights extends Controller
{
    public function index()
    {
        if (isset($_POST['origin']) && isset($_POST['destination']) && isset($_POST['date'])) {
            $origin = $_POST['origin'];
            $destination = $_POST['destination'];
            $date = date('d-M-y', strtotime($_POST['date']));
        } else header('Location: ' . URL . 'Home');
        $flights_model = $this->loadModel('FlightsModel');
        $flights = $flights_model->getFlights($origin, $destination, $date);
        $data['flights'] = '';
        if ($flights[0] == 'not foun')
        {
            $data['header']='Nu exista zboruri pe aceasta ruta';
        }
        else {
            $data['header']=$origin.' 🠞 '.$destination;
            $data['flights'] = '';
            $data['flights'] = $data['flights'] . '<div class="container"><div class="d-flex flex-column">';
            foreach ($flights as $flight) {
                $data['flights'] = $data['flights'] . $this->createFlight($flight);
            }
            $data['flights'] = $data['flights'] . '</div></div>';
        }
        $data['nav']=$this->getClientHeader();
        $this->view('flights/index', $data);
    }

    private function createFlight($flight)
    {
        $text = '';
        $text = $text . '<div class="p-2">';
        $text = $text . '<div class="row">';
        $flight = explode('\\', $flight);
        $price = 0;
        $ids = '';
        foreach ($flight as $item) {
            $item = explode('/', $item);
            $text = $text . '<div class="col-sm-10">';
            $text = $text . '<h4 class="text-center" id="title">' . $item[0] . '</h4>';
            $text = $text . '<h4 class="text-center" id="title2">' . $item[1] . ' 🠞 ' . $item[2] . '</h4>';
            $text = $text . '<div class="d-flex justify-content-center flex-row bd-highlight mb-3">';
            $text = $text . '<div class="p-2 bd-highlight" id="rt">';
            $text = $text . '<div class="text-center">Ora Decolare: ' . $item[3] . '<br>data: ' . $item[4] . '</div>';
            $text = $text . '</div>';
            $text = $text . '<div class="p-2 bd-highlight" id="rt">';
            $text = $text . '<div class="text-center">ora aterizare: ' . $item[5] . '<br>data: ' . $item[6] . '</div>';
            $text = $text . '</div>';
            $text = $text . '</div>';
            $text = $text . '</div>';
            $price = $price + $item[7];
            $ids = $ids . $item[9] . ',';
        }
        $ids = substr($ids, 0, -1);
        $text = $text . '<div class="col-sm-2">';
        $text = $text . '<div class="d-flex flex-column-reverse">';
        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<form action="' . URL . 'Booking" method="post">';
        $text = $text . '<input type="hidden" name="flightIds" value="' . $ids . '">';
        $text = $text . '<div class="form-btn">';
        $text = $text . '<button class="submit-btn">Book Now</button>';
        $text = $text . '</div>';
        $text = $text . '</form>';
        $text = $text . '</div>';
        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<div class="price">' . $price . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        return $text;
    }
}
