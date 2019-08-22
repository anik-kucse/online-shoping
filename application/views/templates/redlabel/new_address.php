<div id="new_address">
    <div class="container">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2 sidebar">
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="#">My Orders <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Address Book</a></li>
                        <li><a href="#">Change Password</a></li>
                    </ul>
                </div>
                <div class="col-sm-10 main">
                    <h1 class="page-header">Edit Address</h1>
                    <div class="row" style="padding: 20px">
                        <div class="form-group col-sm-6">
                            <label for="firstNameInput">First Name(<sup><?= lang('requires') ?></sup>)</label>
                            <input id="firstNameInput" class="form-control has-error" name="first_name" type="text" placeholder="First name">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="lastNameInput">Last Name(<sup><?= lang('requires') ?></sup>)</label>
                            <input id="lastNameInput" class="form-control" name="last_name"  type="text" placeholder="Last name">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="emailAddressInput"><?= lang('email_address') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="emailAddressInput" class="form-control" name="email"  type="text" placeholder="<?= lang('email_address') ?>">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="phoneInput"><?= lang('phone') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="phoneInput" class="form-control" name="phone" type="text" placeholder="<?= lang('phone') ?>">
                        </div>
                        <div class="form-group col-sm-12">
                            <label for="addressInput"><?= lang('address') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <textarea id="addressInput" name="address" class="form-control" rows="3"></textarea>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="cityInput"><?= lang('city') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="cityInput" class="form-control" name="city"  type="text" placeholder="<?= lang('city') ?>">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="postInput"><?= lang('post_code') ?></label>
                            <input id="postInput" class="form-control" name="post_code"  type="text" placeholder="<?= lang('post_code') ?>">
                        </div>
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-primary" style="display: table; margin: 0 auto; width: 15%" >
                                Save</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>