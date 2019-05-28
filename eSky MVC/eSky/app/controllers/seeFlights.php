<?php

class seeFlights extends Controller
{
    public function index()
    {
        session_start();
        if (!isset($_SESSION['id']))
            header('Location: ' . URL . 'Home');
        $flights_model = $this->loadModel('FlightsModel');
        $id = $_SESSION['id'][0];
        $flights = $flights_model->getFlightsByAirline($id);
        $data['flights'] = '';
        $data['flights'] = $data['flights'] . '<div class="container"><div class="d-flex flex-column">';
        foreach ($flights as $flight) {
            $data['flights'] = $data['flights'] . $this->createFlight($flight);
        }
        $data['flights'] = $data['flights'] . '</div></div>';
        $data['header'] = $this->getAdminHeader();
        $this->view('seeFlights/index', $data);
    }

    private function createFlight($flight)
    {
        $text = '';
        $text = $text . '<div class="p-2">';
        $text = $text . '<div class="row">';
        $text = $text . '<div class="col-sm-10">';
        $text = $text . '<h4 class="text-center" id="title2">' . $flight['DEPARTURE_AIRPORT'] . ' 🠞 ' . $flight['ARRIVAL_AIRPORT'] . '</h4>';
        $text = $text . '<div class="d-flex justify-content-center flex-row bd-highlight mb-3">';
        $text = $text . '<div class="p-2 bd-highlight" id="rt">';
        $text = $text . '<div class="text-center">Ora Decolare: ' . $flight['DEPARTURE_HOUR'] . '<br>data: ' . $flight['DEPARTURE_DATE'] . '</div>';
        $text = $text . '</div>';
        $text = $text . '<div class="p-2 bd-highlight" id="rt">';
        $text = $text . '<div class="text-center">ora aterizare: ' . $flight['ARRIVAL_HOUR'] . '<br>data: ' . $flight['ARRIVAL_DATE'] . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '<div class="col-sm-2">';
        $text = $text . '<div class="d-flex flex-column-reverse">';
        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<form action="' . URL . 'seePassengers" method="post">';
        $text = $text . '<input type="hidden" name="flightId" value="' . $flight['ID'] . '">';
        $text = $text . '<div class="form-btn">';
        $text = $text . '<button class="submit-btn">See passengers</button>';
        $text = $text . '</div>';
        $text = $text . '</form>';
        $text = $text . '</div>';
        $text = $text . '<div class="p-2" id="ccc">';
        $text = $text . '<div class="price">' . $flight['BASE_PRICE'] . '€</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        $text = $text . '</div>';
        return $text;
    }
}
