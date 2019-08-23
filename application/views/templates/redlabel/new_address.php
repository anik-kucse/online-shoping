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
                    <h1 class="page-header">Edit Address</h1>
                    <div class="row" style="padding: 20px">
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

                        <form method="POST" action="">
                            <div class="form-group col-sm-6">
                                <label for="NameInput">Name (<sup><?= lang('requires') ?></sup>)</label>
                                <input id="NameInput" class="form-control has-error" name="name" type="text" placeholder="First name" required value="<?= $userInfo['name']?>">
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="phoneInput"><?= lang('phone') ?> (<sup><?= lang('requires') ?></sup>)</label>
                                <input id="phoneInput" class="form-control" name="phone" type="text" placeholder="<?= lang('phone') ?>" required value="<?= $userInfo['phone'] ?>">
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="cityInput"><?= lang('city') ?> (<sup><?= lang('requires') ?></sup>)</label>
                                <input id="cityInput" class="form-control" name="city"  type="text" placeholder="<?= lang('city') ?>" required value="<?php if($userInfo['city'] != NULL) echo $userInfo['city'];?>">
                            </div>
                            <div class="form-group col-sm-6">
                                <label for="postInput"><?= lang('post_code') ?></label>
                                <input id="postInput" class="form-control" name="post_code"  type="text" placeholder="<?= lang('post_code') ?>" required value="<?php if($userInfo['post_code'] != NULL) echo $userInfo['post_code'];?>">
                            </div>
                            <div class="form-group col-sm-12">
                                <label for="addressInput"><?= lang('address') ?> (<sup><?= lang('requires') ?></sup>)</label >
                                <textarea id="addressInput" name="address" class="form-control" rows="3" placeholder="Road, House, Post Area" required><?php if($userInfo['address'] != NULL) echo $userInfo['address'];?></textarea>
                            </div>
                            <div class="col-md-12">
                                <button type="submit" class="btn btn-primary" style="display: table; margin: 0 auto; width: 15%" name="save_address" >Save</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>