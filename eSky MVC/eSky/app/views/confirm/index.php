<!-- Done -->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Confirm flight</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/flights.css">
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
<h3 class="text-center" id="title">Confirm your flight</h3>

<div class="container">
    <div class="d-flex flex-column">
        <div class="p-2">
            <div class="row">
                <div class="col-sm-10">
                    <h4 class="text-center" id="title"> Final price : <?php echo $data['price'];?></h4>
                </div>
                <div class="col-sm-2">
                    <div class="d-flex flex-column-reverse">
                        <div class="p-2" id="ccc">
                            <form action="<?php echo URL; ?>Confirm/confirmFlight" method="post">
                                <?php echo $data['postData'];?>
                                <div class="form-btn">
                                    <button class="submit-btn">Confirm</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</body>

</html>