<!-- Done -->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Flights</title>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/flights.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

</head>

<body>
<header>
    <nav>
        <?php echo $data['header'];?>
    </nav>
</header>

<?php echo $data['flights'];?>
</body>

</html>