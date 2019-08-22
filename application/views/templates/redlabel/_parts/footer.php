<footer>




</style>
    <div class="footer" id="footer" style="background-color:#A22E70;">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3  style="color:white;"><?= lang('about_us') ?></h3>
                    <p style="color:white;">Ministore is the best online shopping site in bangladesh</p>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3 style="color:white;"><?= lang('pages') ?></h3>
                    <ul>
                        <li><a style="color:white;" href="<?= base_url() ?>">» <?= lang('home') ?> </a></li>
                        <?php if(!isset($special)) { ?>
                            <li><a style="color:white;" href="<?= LANG_URL . '/checkout' ?>">» <?= lang('checkout') ?> </a></li>
                        <?php } ?>
                        <li><a style="color:white;" href="<?= LANG_URL . '/contacts' ?>">» <?= lang('contacts') ?> </a></li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3 style="color:white;"><?= lang('categories') ?></h3>
                    <?php if (!empty($footerCategories)) { ?>
                        <ul>
                            <?php foreach ($footerCategories as $key => $categorie) { ?>
                                <li><a style="color:white;" href="javascript:void(0);" data-categorie-id="<?= $key ?>" class="go-category"><?= $categorie ?></a></li>
                            <?php } ?>
                        </ul>
                    <?php } else { ?>
                        <p style="color:white;"><?= lang('no_categories') ?></p>
                    <?php } ?>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6 f-col">
                    <h3 style="color:white;"><?= lang('contacts') ?></h3>
                    <ul class="footer-icon" style="color:white;">
                        <?php if ($footerContactAddr != '') { ?>
                            <li>
                                <span  style="color:white;" class="pull-left"><i class="fa fa-map-marker"></i></span> 
                                <span style="color:white;" class="pull-left f-cont-info"> <?= $footerContactAddr ?></span> 
                            </li>
                        <?php }if ($footerContactPhone != '') { ?>
                            <li>
                                <span style="color:white;" class="pull-left"><i class="fa fa-phone"></i></span> 
                                <span style="color:white;" class="pull-left f-cont-info"> <?= $footerContactPhone ?></span> 
                            </li>
                        <?php } if ($footerContactEmail != '') { ?>
                            <li>
                                <span style="color:white;" class="pull-left"><i class="fa fa-envelope"></i></span> 
                                <span style="color:white;" class="pull-left f-cont-info"><a style="color:white;" href="mailto:<?= $footerContactEmail ?>"><?= $footerContactEmail ?></a></span>
                            </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-lg-3  col-md-3 col-sm-6 col-xs-12 f-col">
                    <h3 style="color:white;"><?= lang('newsletter') ?></h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <form method="POST" id="subscribeForm">
                                    <input type="text" class="full text-center" name="subscribeEmail" placeholder="<?= lang('email_address') ?>">
                                    <button style="color:white; background-color:tomato;" class="btn bg-gray" onclick="checkEmailField()" type="button"> <?= lang('subscribe') ?> <i class="fa fa-long-arrow-right"></i></button>
                                </form>
                            </div>
                        </li>
                    </ul>
                    <ul class="social">
                        <?php if ($footerSocialFacebook != '') { ?>
                            <li> <a  href="<?= $footerSocialFacebook ?>"><i  class=" fa fa-facebook"></i></a></li>
                        <?php } if ($footerSocialTwitter != '') { ?>
                            <li> <a href="<?= $footerSocialTwitter ?>"><i class="fa fa-twitter"></i></a></li>
                        <?php } if ($footerSocialGooglePlus != '') { ?>
                            <li> <a href="<?= $footerSocialGooglePlus ?>"><i class="fa fa-google-plus"></i></a></li>
                        <?php } if ($footerSocialPinterest != '') { ?>
                            <li> <a href="<?= $footerSocialPinterest ?>"><i class="fa fa-pinterest"></i></a></li>
                        <?php } if ($footerSocialYoutube != '') { ?>
                            <li> <a href="<?= $footerSocialYoutube ?>"><i class="fa fa-youtube"></i></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div> 
        </div>
    </div>
    <div class="footer-bottom bg-dark">
        <div class="container">
            <p class="pull-left">JUWEL © All right reserved</p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
</footer>
<?php if ($this->session->flashdata('emailAdded')) { ?>
    <script>
        $(document).ready(function () {
            ShowNotificator('alert-info', '<?= lang('email_added') ?>');
        });
    </script>
    <?php
}
echo $addedJs;
?>
</div>
</div>
<div id="notificator" class="alert"></div>
<script src="<?= base_url('assets/js/bootstrap.min.js') ?>"></script>
<script src="<?= base_url('assets/js/bootstrap-confirmation.min.js') ?>"></script>
<script src="<?= base_url('assets/bootstrap-select-1.12.1/js/bootstrap-select.min.js') ?>"></script>
<script src="<?= base_url('assets/js/placeholders.min.js') ?>"></script>
<script src="<?= base_url('assets/js/bootstrap-datepicker.min.js') ?>"></script>
<script>
var variable = {
    clearShoppingCartUrl: "<?= base_url('clearShoppingCart') ?>",
    manageShoppingCartUrl: "<?= base_url('manageShoppingCart') ?>",
    discountCodeChecker: "<?= base_url('discountCodeChecker') ?>"
};
</script>
<script src="<?= base_url('assets/js/system.js') ?>"></script>
<script src="<?= base_url('templatejs/mine.js') ?>"></script>
</body>
</html>
