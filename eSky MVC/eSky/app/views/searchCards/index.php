<!-- Done -->



<!DOCTYPE html>
<html lang="en">

<head>
    <title>Search for discount cards</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL ?>public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo URL ?>public/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>
<body>
<header>
    <nav>
        <?php echo $data['header'];?>
    </nav>
</header>

<h2 class="text-center" id="title">Search for discount cards</h2>

<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form action="<?php echo URL ?>Cards" method="post">
                        <div class="form-group">
                            <span class="form-label">CNP</span>
                            <input class="form-control" type="number" name="cnp" placeholder="Enter your CNP" required>
                        </div>
                        <div class="form-group">
                            <span class="form-label">Airline Company</span>
                            <select class="form-control" id="airlineSelect" name="airline">
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