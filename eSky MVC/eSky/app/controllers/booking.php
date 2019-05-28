<?php

class Booking extends Controller
{
    public function index()
    {
        if (!isset($_POST['flightIds'])) {
            header('Location: ' . URL . 'Home');
        }
        $data['flightIds']='<input type="hidden" name="flightIds" value="' . $_POST['flightIds'] . '">';
        $flight_model = $this->loadModel('FlightsModel');
        $flightsIds = explode(',', $_POST['flightIds']);
        $data['ensurance'] = 0;
        if (count($flightsIds) > 1) {
            $data['flightCount'] = 2;
            $data['seats2'] = '';
        }
        $data['seats1'] = '';
        $counter = 1;
        foreach ($flightsIds as $flightId) {
            $result = $flight_model->getFlightData($flightId);
            $data['ensurance'] += $result[0]['ENSURANCE_PRICE'];
            $seats = $result[0]['NUMBER_TICKETS'];
            if ($counter == 1) {
                $data['seats1'] = $data['seats1'] . '';
                $i = 1;
                while ($i <= $seats) {
                    $data['seats1'] = $data['seats1'] . '<div class="d-flex flex-column" id="rand">';
                    $data['seats1'] = $data['seats1'] . '<div class="p-2">';
                    $data['seats1'] = $data['seats1'] . '<div class="d-flex flex-row bd-highlight">';
                    for ($j = 1; $j <= 6 && $i <= $seats; $i++, $j++) {
                        $data['seats1'] = $data['seats1'] . $this->createSeat($j, $i,$counter);
                    }
                    $data['seats1'] = $data['seats1'] . '</div></div></div>';
                }
            }
            if ($counter == 2) {
                $data['seats2'] = '<div class="form-group">';
                $data['seats2'] = $data['seats2'] . '<span class="form-label">Select seat for flight 2</span>';
                $i = 1;
                while ($i <= $seats) {
                    $data['seats2'] = $data['seats2'] . '<div class="d-flex flex-column" id="rand">';
                    $data['seats2'] = $data['seats2'] . '<div class="p-2">';
                    $data['seats2'] = $data['seats2'] . '<div class="d-flex flex-row bd-highlight">';
                    for ($j = 1; $j <= 6 && $i <= $seats; $i++, $j++) {
                        $data['seats2'] = $data['seats2'] . $this->createSeat($j, $i,$counter);
                    }
                    $data['seats2'] = $data['seats2'] . '</div></div></div>';
                }
                $data['seats2'] = $data['seats2'] .'</div>';
            }
            $counter++;
        }

        $this->view('booking/index', $data);
    }

    private function createSeat($index, $seatNumber,$flightNumber)
    {
        $text = '';
        $text = $text . '<div class="p-2 bd-highlight">';
        $text = $text . '<div class="form-check form-check-inline">';
        $text = $text . '<input class="form-check-input" name="seat'.$flightNumber.'" type="radio"';
        $text = $text . 'id="inlineCheckbox' . $index . '" value="' . $seatNumber . '">';
        $text = $text . '<label class="form-check-label" for="inlineCheckbox' . $index . '">' . $index . '</label>';
        $text = $text . '</div></div>';
        return $text;
    }
}
