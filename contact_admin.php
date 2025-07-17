<div style='padding-top: 3rem;'>
    <form class="contact" method="post" action="contact_success.php">
        <h1 class="ttctc">Contact Form</h1>
        <div class="container">
            <label for="email">
                <i class="fas fa-envelope"></i>
                <input id="email" type="email" class="form-control" name="email" placeholder="Your Email" required>
            </label>
            <label for="name">
                <i class="fas fa-user"></i>
                <input type="text" name="name" class="form-control" placeholder="Your Name" required>
            </label>
            <div>
                <input type="text" name="subject" class="form-control" placeholder="Subject" required>
                <textarea class="form-control" name="msg" placeholder="Message" required></textarea>
            </div>
        </div>
        <input type="submit" value="Submit">
    </form>
</div>


