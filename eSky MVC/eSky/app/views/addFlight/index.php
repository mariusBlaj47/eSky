<!DOCTYPE html>
<html lang="en">

<head>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<header>
    <nav>
        <div>
            <h1><a href="<?php echo URL; ?>Home"><img src="<?php echo URL; ?>public/images/logo.png" alt="logo"></a></h1>
        </div>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">Our Services</a></li>
            <li><a href="#">Design</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>
<body>
    <div id="booking" class="section">
        <div class="section-center">
            <div class="container">
                <div class="row">
                    <div class="booking-form">
                        <form action="<?php echo URL; ?>addFlight/add" method="post">
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Origin</span>
                                        <select class="form-control" name="origin" id="originSelect">
                                            <?php echo $data['airports']; ?>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Destination</span>
                                        <select class="form-control" name="destination" id="destinationSelect" >
                                            <?php echo $data['airports']; ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Departure Date</span>
                                        <input class="form-control" name="date1" type="date" required>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <span class="form-label">Arrival Date</span>
                                        <input class="form-control" name="date2" type="date" required>
                                    </div>
                                </div>
                            </div>
                            <span class="form-label">Departure</span>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Hour</span>
                                        <select class="form-control" name="hour1">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Min</span>
                                        <select class="form-control" name="min1">
                                            <option>05</option>
                                            <option>10</option>
                                            <option>15</option>
                                            <option>20</option>
                                            <option>25</option>
                                            <option>30</option>
                                            <option>35</option>
                                            <option>40</option>
                                            <option>45</option>
                                            <option>50</option>
                                            <option>55</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">AM/PM</span>
                                        <select class="form-control" name="am1">
                                            <option>AM</option>
                                            <option>PM</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                            </div>
                            <span class="form-label">Arrival</span>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Hour</span>
                                        <select class="form-control" name="hour2">
                                            <option>1</option>
                                            <option>2</option>
                                            <option>3</option>
                                            <option>4</option>
                                            <option>5</option>
                                            <option>6</option>
                                            <option>7</option>
                                            <option>8</option>
                                            <option>9</option>
                                            <option>10</option>
                                            <option>11</option>
                                            <option>12</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Min</span>
                                        <select class="form-control" name="min2">
                                            <option>05</option>
                                            <option>10</option>
                                            <option>15</option>
                                            <option>20</option>
                                            <option>25</option>
                                            <option>30</option>
                                            <option>35</option>
                                            <option>40</option>
                                            <option>45</option>
                                            <option>50</option>
                                            <option>55</option>
                                        </select>
                                        <span class="select-arrow"></span>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                        <div class="form-group">
                                            <span class="form-label">AM/PM</span>
                                            <select class="form-control" name="am2">
                                                <option>AM</option>
                                                <option>PM</option>
                                            </select>
                                            <span class="select-arrow"></span>
                                        </div>
                                    </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Price</span>
                                        <input class="form-control" type="number" name="price" placeholder="Choose price" required>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Ensurance price</span>
                                        <input class="form-control" type="number" name="ensurance" placeholder="Choose price" required>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <span class="form-label">Number of seats</span>
                                        <input class="form-control" type="number" name="seat" placeholder="How many" required>
                                    </div>
                                </div>
                            </div>
                            <div class="form-btn">
                                <button class="submit-btn">Add Now</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>