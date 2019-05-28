<?php

class Confirm extends Controller
{
    public function index()
    {
        print_r(($_POST));
        if (isset($_POST['cnp']) && isset($_POST['first_name']) && isset($_POST['last_name']) && isset($_POST['email']) && isset($_POST['gender']) && isset($_POST['birth_date']) && isset($_POST['nationality']) && isset($_POST['luggage']) && isset($_POST['ensurance']) && isset($_POST['seat1']) && isset($_POST['flightIds'])) {
            $flights = explode(',', $_POST['flightIds']);
            $flights_model = $this->loadModel('FlightsModel');
            $price = 0;
            $counter=1;
            $data['postData'] = '';
            foreach ($flights as $flight) {
                $this_flight_price=$flights_model->getDiscountedPrice($_POST['cnp'],$flight);
                $price += $this_flight_price;
                $data['postData'] = $data['postData'] .'<input type="hidden" name="final_price'.$counter.'" value="' . $this_flight_price . '">';
                $counter++;
            }
            $data['price'] = $price;

            $data['postData'] = $data['postData'] . '<input type="hidden" name="cnp" value="' . $_POST['cnp'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="first_name" value="' . $_POST['first_name'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="last_name" value="' . $_POST['last_name'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="email" value="' . $_POST['email'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="gender" value="' . $_POST['gender'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="birth_date" value="' . date('d-M-y', strtotime($_POST['birth_date'])) . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="nationality" value="' . $_POST['nationality'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="luggage" value="' . $_POST['luggage'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="ensurance" value="' . $_POST['ensurance'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="seat1" value="' . $_POST['seat1'] . '">';
            $data['postData'] = $data['postData'] . '<input type="hidden" name="flightIds" value="' . $_POST['flightIds'] . '">';
            if (isset($_POST['seat2']))
                $data['postData'] = $data['postData'] . '<input type="hidden" name="seat2" value="' . $_POST['seat2'] . '">';
        } else header('Location: ' . URL . 'Home');
        $this->view('confirm/index', $data);
    }

    public function confirmFlight()
    {
        if (isset($_POST['cnp']) && isset($_POST['first_name']) && isset($_POST['last_name']) && isset($_POST['email']) && isset($_POST['gender']) && isset($_POST['birth_date']) && isset($_POST['nationality']) && isset($_POST['luggage']) && isset($_POST['ensurance']) && isset($_POST['seat1']) && isset($_POST['flightIds'])&&isset($_POST['final_price1'])&&isset($_POST['seat1'])) {
            $booking_model=$this->loadModel('BookingModel');
            $flights=explode(',',$_POST['flightIds']);
            $booking_model->createBooking($_POST['cnp'],$_POST['first_name'],$_POST['last_name'],$_POST['gender'],$_POST['birth_date'],$_POST['nationality'],$_POST['email'],$flights[0],$_POST['final_price1'],$_POST['ensurance'],$_POST['luggage'],$_POST['seat1']);
            if(isset($_POST['seat2']))
                $booking_model->createBooking($_POST['cnp'],$_POST['first_name'],$_POST['last_name'],$_POST['gender'],$_POST['birth_date'],$_POST['nationality'],$_POST['email'],$flights[1],$_POST['final_price2'],$_POST['ensurance'],$_POST['luggage'],$_POST['seat2']);
        }
        header('Location: ' . URL . 'Confirmed');
    }
}
