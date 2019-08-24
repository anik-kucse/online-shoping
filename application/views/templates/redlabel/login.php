<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container user-page">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
            <div class="loginmodal-container">
                <h1><?= lang('login_to_acc') ?></h1><hr>
                <form method="POST" action="" class="form-box">
                    <input type="text" name="email" placeholder="Email" required class="col-md-3 form-control" style="margin-bottom: 15px">
                    <input type="password" name="pass" placeholder="Password" required class="col-md-3 form-control" style="margin-bottom: 15px">
                    <input type="submit" name="login" value="<?= lang('login') ?>" class="btn btn-default" style="margin-bottom: 15px">
                </form>
                <div class="login-help">
                    <a href="<?= LANG_URL . '/register' ?>"><?= lang('register') ?></a>
                </div>
            </div>
        </div>
    </div>
</div>