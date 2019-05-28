<!-- Done -->


<!DOCTYPE html>
<html lang="en">

<head>
    <title>Cards</title>
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
<h3 class="text-center" id="title">Cards for <?php echo $data['airline'];?></h3>

<div class="container">
    <div class="d-flex flex-column">
        <?php echo $data['cards'];?>
    </div>
</div>
</body>

</html>