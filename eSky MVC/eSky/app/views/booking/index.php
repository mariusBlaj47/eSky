<!-- Done -->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Book the flight</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/booking.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<body>
<header>
    <nav>
        <?php echo $data['header'];?>
    </nav>
</header>
<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form action="<?php echo URL ?>Confirm" method="post">
                        <div class="form-group">
                            <span class="form-label">CNP</span>
                            <input class="form-control" type="number" name="cnp" placeholder="Enter your CNP" required>
                        </div>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span class="form-label">First Name</span>
                                    <input class="form-control" type="text" name="first_name"
                                           placeholder="Enter your first name" required>
                                </div>
                            </div>

                            <div class="col-sm-6">
                                <div class="form-group">
                                    <span class="form-label">Last name</span>
                                    <input class="form-control" type="text" name="last_name"
                                           placeholder="Enter your last name" required>
                                </div>
                            </div>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Email</span>
                            <input class="form-control" type="email" name="email" placeholder="Enter your email" required>
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
                            <select class="form-control" name="luggage" id="luggageSelect">
                                <option value="10">10 (free)</option>
                                <option value="20">20 (10€)</option>
                                <option value="32">32 (20€)</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Ensurance</span>
                            <select class="form-control" name="ensurance" id="ensuranceSelect">
                                <option value="0">No (free)</option>
                                <option value="<?php echo $data['ensurance'];?>">Yes (<?php echo $data['ensurance'];?>)</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <span class="form-label">Select seat for flight <?php if(isset($data['flightCount']))echo $data['flightCount']-1;?></span>
                            <?php echo $data['seats1'];?>
                        </div>
                        <?php if (isset($data['seats2'])) echo $data['seats2'];?>
                        <?php echo $data['flightIds'];?>
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