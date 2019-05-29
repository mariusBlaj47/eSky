<!DOCTYPE html>
<html lang="en">

<head>
    <link type="text/css" rel="stylesheet" href="<?php echo URL; ?>public/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?php echo URL; ?>public/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>
<header>
    <nav>
        <?php echo $data['header'];?>
    </nav>
</header>
<body>
<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form action="<?php echo URL; ?>addCard/add" method="post">
                        <div class="row">
                            <div class="col-sm-12">
                                <div class="form-group">
                                    <span class="form-label">Your card name</span>
                                    <input class="form-control" type="text"name="card" required>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span class="form-label">Discount procent</span>
                                    <input class="form-control" type="number" name="discount" max="100" placeholder="Discount%" required>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span class="form-label">Price</span>
                                    <input class="form-control" type="number" name="price" placeholder="Choose price" required>
                                </div>
                            </div>
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <span class="form-label">Validity in days</span>
                                    <input class="form-control" type="number" name="validity" placeholder="Number of days" required>
                                </div>
                            </div>
                        </div>
                        <div class="form-btn">
                            <button class="submit-btn">Add Card Now</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>