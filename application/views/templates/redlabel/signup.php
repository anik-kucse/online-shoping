<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container user-page">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
            <div class="loginmodal-container">
                <h1><?= lang('user_register') ?></h1><hr>
                <form method="POST" action="" class="form">
                    <input type="text" name="name" placeholder="Name" class="form-control col-md-4" style="margin-bottom: 15px" required>
                    <input type="text" name="phone" placeholder="Phone" class="form-control col-md-4" style="margin-bottom: 15px" required>
                    <input type="text" name="email" placeholder="Email" class="form-control col-md-4" style="margin-bottom: 15px" required>
                    <input type="password" name="pass" placeholder="Password" class="form-control col-md-4" style="margin-bottom: 15px" required>
                    <input type="password" name="pass_repeat" placeholder="Password repeat" class="form-control col-md-4" style="margin-bottom: 15px" required>
                    <input type="submit" name="signup" value="<?= lang('register_me') ?>" class="btn btn-default" style="margin-bottom: 15px">
                </form>
            </div>
        </div>
    </div>
</div>