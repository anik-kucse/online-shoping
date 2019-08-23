<style>
    #map {
        height: 400px;
        width: 100%;
    }
    #detailsAddress{

        margin: 10px 10px 5px;
    }
    #detailsOrdersAddress{

        margin: 15px 10px 5px;
    }

    h3, label{
        color: grey;
    }

</style>
<div id="myAccount">
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
                    <h1 class="page-header">Account Information</h1>
                    <div id="address">
                        <div id="my_address">
                            <h3>My Address</h3>
                            <div class="col-md-12" id="detailsAddress" style="padding-top: 10px">
                                <label class="col-md-12 col-form-label row"><?= $userInfo['name'] ?></label>
                                <label class="col-md-12 col-form-label row"><?= $userInfo['email'] ?></label>
                                <label class="col-md-12 col-form-label row"><?= $userInfo['phone'] ?></label>
                                <?php if($userInfo['address'] == NULL) { ?>
                                    <label class="col-md-12 col-form-label row">You don't have any address yet.<a href="<?= base_url('myaccount/newaddress') ?>">Add here</a></label>
                                <?php } else { ?>
                                    <label class="col-md-12 col-form-label row"><?= $userInfo['address'] ?></label>
                                    <label class="col-md-12 col-form-label row"><?= $userInfo['city']. ', '. $userInfo['post_code'] ?></label>
                                    <label class="col-md-12 col-form-label row"><a href="<?= base_url('myaccount/newaddress') ?>">Edit Address</a></label>
                                <?php } ?>
                            </div>
                            <br>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>