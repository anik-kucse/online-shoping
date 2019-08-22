<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container user-page">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4">
            <div class="loginmodal-container">
                <h1><?= lang('login_to_acc') ?></h1><br>
                <form method="POST" action="">
                    <input type="text" name="email" placeholder="Email">
                    <input type="password" name="pass" placeholder="Password">
                    <input type="submit" name="login" class="login loginmodal-submit" value="<?= lang('login') ?>">
                </form>
                <div class="login-help">
                    <a href="<?= LANG_URL . '/register' ?>"><?= lang('register') ?></a>
                </div>
            </div>
        </div>
    </div>
</div>