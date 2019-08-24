<div id="new_address">
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="<?= base_url('myaccount') ?>">My Orders <span class="sr-only">(current)</span></a></li>
                        <li><a href="<?= base_url('myaccount/address') ?>">My Address</a></li>
                        <li><a href="<?= base_url('myaccount/change') ?>">Change Email/Password</a></li>
                    </ul>
                </div>
                <div class="col-sm-10 main">
                    <?php
                    $error = $this->session->flashdata('submit_error');
                    if(isset($error)) { ?>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="alert alert-danger">
                                    <h4><span class="glyphicon glyphicon-alert"></span> <?= lang('finded_errors') ?></h4>
                                    <?php
                                        foreach ($error as $err) {
                                            echo $err . '<br>';
                                        }
                                    ?>
                                </div>
                                <hr>
                            </div>
                        </div>
                    <?php } ?>
                    <?php
                    $saved = $this->session->flashdata('submit_success');
                    if(isset($saved)) { ?>
                        <div class="row">
                            <div class="col-sm-6">
                                <div class="alert alert-success">
                                    <h4><span class="glyphicon glyphicon-saved"></span> Data Updated</h4>
                                    <?= $saved . '<br>' ?>
                                </div>
                                <hr>
                            </div>
                        </div>
                    <?php } ?>
                    <div class="row">
                        <div class="col-sm-6">
                            <h1>Change Email</h1>
                            <hr>
                            <form method="POST" action="">
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="new_email">New Email(<sup><?= lang('requires') ?></sup>)</label>
                                        <input id="new_email" class="form-control has-error" name="new_email" type="email" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="pass">Password(<sup><?= lang('requires') ?></sup>)</label>
                                        <input id="pass" class="form-control has-error" name="pass" type="password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <input id="change_email" type="submit" name="change_email" class="btn btn-default" value="Change Email">
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="col-sm-6">
                            <h1>Change Password</h1>
                            <hr>
                            <form method="POST" action="">
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="old_pass">Old Password(<sup><?= lang('requires') ?></sup>)</label>
                                        <input id="old_pass" class="form-control has-error" name="old_pass" type="password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="new_pass">New Password(<sup><?= lang('requires') ?></sup>)</label>
                                        <input id="new_pass" class="form-control has-error" name="new_pass" type="password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <label for="con_pass">Confirm Password(<sup><?= lang('requires') ?></sup>)</label>
                                        <input id="con_pass" class="form-control has-error" name="con_pass" type="password" required>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="form-group col-sm-12">
                                        <input id="change_pass" type="submit" name="change_pass" class="btn btn-default" value="Change Password">
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
