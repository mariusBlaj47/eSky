<!-- Done -->



<!DOCTYPE html>
<html lang="en">

<head>
    <title>eSky</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL ?>public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo URL ?>public/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
<header>
    <nav>
        <div>
            <h1><a href="<?php echo URL ?>Home"><img src="<?php echo URL ?>public/images/logo.png" alt="logo"></a></h1>
        </div>
        <ul>
            <li><a href="<?php echo URL ?>public/index.html">Home</a></li>
            <li><a href="#">Our Services</a></li>
            <li><a href="#">Design</a></li>
            <li><a href="#">Blog</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<h2 class="text-center" id="title">Search for cards</h2>

<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form action="<?php echo URL ?>Cards" method="post">
                        <div class="form-group">
                            <span class="form-label">CNP</span>
                            <input class="form-control" type="text" name="cnp" placeholder="Enter your CNP">
                        </div>
                        <div class="form-group">
                            <span class="form-label">Airline Company</span>
                            <select class="form-control" id="airlineSelect" name="airport">
                                <?php echo $data['airports']; ?>
                            </select>
                        </div>
                        <div class="form-btn">
                            <button class="submit-btn">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>