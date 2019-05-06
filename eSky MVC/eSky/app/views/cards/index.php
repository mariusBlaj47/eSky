<h2 class="text-center" id="title">Search for cards</h2>

<div id="booking" class="section">
    <div class="section-center">
        <div class="container">
            <div class="row">
                <div class="booking-form">
                    <form>
                        <div class="form-group">
                            <span class="form-label">CNP</span>
                            <input class="form-control" type="text" name="cnp" placeholder="Enter your CNP">
                        </div>
                        <div class="form-group">
                            <span class="form-label">Airline Company</span>
                            <select class="form-control" id="airlineSelect">
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