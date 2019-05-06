<h2 class="text-center" id="title">Enter your data</h2>

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
                            <input class="form-control" type="email" placeholder="Enter your email">
                        </div>

                        <div class="form-group">
                            <span class="form-label">Gender</span>
                            <select class="form-control" id="genderSelect">
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
                            <select class="form-control" id="nationalitySelect">
                                <option>Romanian</option>
                                <option>Spanish</option>
                                <option>Italian</option>
                            </select>
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