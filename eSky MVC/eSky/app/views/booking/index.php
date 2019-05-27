<!-- Done -->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Buy ticket</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/booking.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<body>
<header>
    <nav>
        <div>
            <h1><a href="<?php echo URL; ?>Home"><img src="<?php echo URL; ?>public/images/logo.png" alt="logo"></a>
            </h1>
        </div>
        <ul>
            <li><a href="<?php echo URL; ?>Home">Home</a></li>
            <li><a href="#">Our Services</a></li>
            <li><a href="#">Design</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>
<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form action="<?php echo URL ?>Test" method="post">
                        <div class="form-group">
                            <span class="form-label">CNP</span>
                            <input class="form-control" type="text" name="cnp" placeholder="Enter your CNP">
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span class="form-label">First Name</span>
                                    <input class="form-control" type="text" name="first_name"
                                           placeholder="Enter your first name">
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span class="form-label">Last name</span>
                                    <input class="form-control" type="text" name="last_name"
                                           placeholder="Enter your last name">
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Email</span>
                            <input class="form-control" type="email" name="email" placeholder="Enter your email">
                        </div>

                        <div class="form-group">
                            <span class="form-label">Gender</span>
                            <select class="form-control" name="gender" id="genderSelect">
                                <option>Male</option>
                                <option>Female</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Birth Date</span>
                            <input class="form-control" type="date" name="birth_date" required>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Nationality</span>
                            <select class="form-control" name="nationality" id="nationalitySelect">
                                <option>Romanian</option>
                                <option>Spanish</option>
                                <option>Italian</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Luggage</span>
                            <select class="form-control" name="luggage" id="nationalitySelect">
                                <option value="0">10 (free)</option>
                                <option value="10">20 (10)</option>
                                <option value="20">32 (20)</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Select seat</span>
                            <div class="d-flex flex-column" id="rand">
                                <div class="p-2">
                                    <div class="d-flex flex-row bd-highlight">

                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox1" value="option1">
                                                <label class="form-check-label" for="inlineCheckbox1">1</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox1" value="option2">
                                                <label class="form-check-label" for="inlineCheckbox2">2</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox3" value="option3">
                                                <label class="form-check-label" for="inlineCheckbox3">3</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox4" value="option4">
                                                <label class="form-check-label" for="inlineCheckbox4">4</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox5" value="option5">
                                                <label class="form-check-label" for="inlineCheckbox5">5</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox6" value="option6">
                                                <label class="form-check-label" for="inlineCheckbox6">6</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="d-flex flex-column" id="rand">
                                <div class="p-2">
                                    <div class="d-flex flex-row bd-highlight">

                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox1" value="option1">
                                                <label class="form-check-label" for="inlineCheckbox1">1</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox2" value="option2">
                                                <label class="form-check-label" for="inlineCheckbox2">2</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox3" value="option3">
                                                <label class="form-check-label" for="inlineCheckbox3">3</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox4" value="option4">
                                                <label class="form-check-label" for="inlineCheckbox4">4</label>
                                            </div>
                                        </div>
                                        <div class="p-2 bd-highlight">
                                            <div class="form-check form-check-inline">
                                                <input class="form-check-input" name="seat" type="radio"
                                                       id="inlineCheckbox5" value="option5">
                                                <label class="form-check-label" for="inlineCheckbox5">5</label>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-btn">
                            <button class="submit-btn">Book Now</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>