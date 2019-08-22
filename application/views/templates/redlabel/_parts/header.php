<!DOCTYPE html>
<html lang="<?= MY_LANGUAGE_ABBR ?>">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" /> 
        <meta name="description" content="<?= $description ?>" />
        <meta name="keywords" content="<?= $keywords ?>" />
        <meta property="og:title" content="<?= $title ?>" />
        <meta property="og:description" content="<?= $description ?>" />
        <meta property="og:url" content="<?= LANG_URL ?>" />
        <meta property="og:type" content="website" />
        <meta property="og:image" content="<?= base_url('assets/img/site-overview.png') ?>" />
        <title><?= $title ?></title>
        <link rel="stylesheet" href="<?= base_url('assets/css/font-awesome.min.css') ?>" />
        <link rel="stylesheet" href="<?= base_url('assets/css/bootstrap.min.css') ?>" />
        <link rel="stylesheet" href="<?= base_url('assets/bootstrap-select-1.12.1/bootstrap-select.min.css') ?>" />
        <link href="<?= base_url('assets/css/bootstrap-datepicker.min.css') ?>" rel="stylesheet" />
        <link href="<?= base_url('templatecss/custom.css') ?>" rel="stylesheet" />
        <link href="<?= base_url('cssloader/theme.css') ?>" rel="stylesheet" />
        <script src="<?= base_url('assets/js/jquery.min.js') ?>"></script>
        <script src="<?= base_url('loadlanguage/all.js') ?>"></script>
		<script src="https://cdn.jsdelivr.net/npm/js-cookie@2/src/js.cookie.min.js"></script>
        <?php
        if ($cookieLaw != false) { ?>
            <script type="text/javascript">
                window.cookieconsent_options = {"message": "<?= $cookieLaw['message'] ?>", "dismiss": "<?= $cookieLaw['button_text'] ?>", "learnMore": "<?= $cookieLaw['learn_more'] ?>", "link": "<?= $cookieLaw['link'] ?>", "theme": "<?= $cookieLaw['theme'] ?>"};
            </script>
            <script type="text/javascript" src="//cdnjs.cloudflare.com/ajax/libs/cookieconsent2/1.0.10/cookieconsent.min.js"></script>
        <?php } ?>

        	   <style>
		.dropdown-submenu {
		  position: relative;

		}

		.dropdown-submenu .dropdown-menu {
		  
		 
		  margin-top:3px;
          width: 450px;
          background:black;
		}
		</style>
    </head>
    <body>
        <div id="wrapper">
            <div id="content">
                <?php if ($multiVendor == 1) { ?>
                    <div id="top-user-panel">
                        <div class="container">
                            <a href="<?= LANG_URL . '/vendor/register' ?>" class="btn btn-default"><?= lang('register_me') ?></a>
                            <form class="form-inline" method="POST" action="<?= LANG_URL . '/vendor/login' ?>">
                                <div class="form-group">
                                    <input type="email" name="u_email" class="form-control" placeholder="<?= lang('email') ?>">
                                </div>
                                <div class="form-group">
                                    <input type="password" name="u_password" class="form-control" placeholder="<?= lang('password') ?>">
                                </div>
                                <div class="checkbox">
                                    <label><input type="checkbox" name="remember_me"><?= lang('remember_me') ?></label>
                                </div>
                                <button type="submit" name="login" class="btn btn-default"><?= lang('u_login') ?></button>
                            </form> 
                        </div>
                    </div>
                <?php } ?>
                <div id="languages-bar">
                    <div class="container">
                        <?php
                        $num_langs = count($allLanguages);
                        if ($num_langs > 0) {
                            ?>
                            <ul class="pull-left">
                                <?php
                                $i = 1;
                                $lang_last = '';
                                foreach ($allLanguages as $key_lang => $lang) {
                                    ?>
                                    <li <?= $i == $num_langs ? 'class="last-item"' : '' ?>>
                                        <img src="<?= base_url('attachments/lang_flags/' . $lang['flag']) ?>" alt="Language-<?= MY_LANGUAGE_ABBR ?>"><a href="<?= base_url($key_lang) ?>"><?= $lang['name'] ?></a>
                                    </li>
                                    <?php
                                    $i++;
                                }
                                ?>
                            </ul>
                        <?php } ?>
                        <div class="phone pull-right">
                            <?php
                            if ($footerContactPhone != '') {
                                ?>
                                <img src="<?= base_url('template/imgs/Phone-icon.png') ?>" alt="Call us">
                                <?php
                                echo $footerContactPhone;
                            }
                            ?>
                        </div>
                    </div>
                </div>
                <div id="top-part" style="background-color:tomato;" >
                    <div class="container" style="background-color:#8181F7;">
                        <div class="row">
                            <div class="col-sm-12 col-md-3 col-lg-4 left">
                                <a href="<?= base_url() ?>">
                                    <img src="<?= base_url('attachments/site_logo/' . $sitelogo) ?>" class="site-logo" alt="<?= $_SERVER['HTTP_HOST'] ?>">
                                </a>
                            </div>
                            <div class="col-sm-6 col-md-5 col-lg-5">
                                <div class="input-group" id="adv-search">
                                    <input type="text" value="<?= isset($_GET['search_in_title']) ? $_GET['search_in_title'] : '' ?>" id="search_in_title" class="form-control" placeholder="<?= lang('search_by_keyword_title') ?>" />
                                    <div class="input-group-btn">
                                        <div class="btn-group" role="group">
                                            <button type="button" onclick="submitForm()" class="btn-go-search mine-color">
                                                <img src="<?= base_url('template/imgs/search-ico.png') ?>" alt="Search">
                                            </button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-sm-6 col-md-4 col-lg-3">
                                <div class="basket-box">
                                    <table>
                                        <tr>
                                            <td>
                                                <img src="<?= base_url('template/imgs/green-basket.png') ?>" class="green-basket" alt="">
                                            </td>
                                            <td>
                                                <div class="center">
                                                    <h4><?= lang('your_basket') ?></h4>
                                                    <a href="<?= LANG_URL . '/checkout' ?>"><?= lang('checkout_top_header') ?></a> |
                                                    <a href="<?= LANG_URL . '/shopping-cart' ?>"><?= lang('shopping_cart_only') ?></a>
                                                </div>
                                            </td>
                                            <td>
                                                <ul class="shop-dropdown">
                                                    <li class="dropdown text-center">
                                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                                            <div><span class="sumOfItems"><?= $cartItems['array'] == 0 ? 0 : $sumOfItems ?></span> <?= lang('items') ?></div>
                                                            <img src="<?= base_url('template/imgs/shopping-cart-icon-515.png') ?>" alt="">
                                                            <span class="caret"></span>
                                                        </a>
                                                        <ul class="dropdown-menu dropdown-menu-right dropdown-cart" role="menu">
                                                            <?= $load::getCartItems($cartItems) ?>
                                                        </ul>
                                                    </li>
                                                </ul>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <nav class="navbar" style="background-color: black;">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                </button>
                            <?php if ($naviText != null) { ?>
                                <a class="navbar-brand" href="<?= base_url() ?>"><?= $naviText ?></a>
                            <?php } ?>
                        </div>
                        <div id="navbar" class="collapse navbar-collapse">
                            <ul class="nav navbar-nav" style="<?= $naviText == null ? 'margin-left:-15px;' : '' ?>">
                                <li <?= uri_string() == '' || uri_string() == MY_LANGUAGE_ABBR ? '' : '' ?>><a href="<?= LANG_URL ?>"><?= lang('home') ?></a></li>
                                
                                <li class="dropdown-submenu">
                                    <a class="test" tabindex="-1" href="#">Category<span class="caret"></span></a>
                                    <ul class="dropdown-menu ">
									      <!-- Split button -->
												<div class="btn-group">
												  <button type="button" class="btn btn-warning">Mobile</button>
												  <button type="button" class="btn btn-danger dropdown-toggle px-3" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="sr-only">Mobile</span>
												  </button>
												  <div class="dropdown-menu">
													<a class="dropdown-item" href="http://localhost/ministore/?category=27&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">iPhone</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Oppo</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Asus</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Symphony</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Samsung</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">xiaomi</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Huawei</a>
												  </div>
												</div>
												
												
												
												<div class="btn-group">
												  <button type="button" class="btn btn-warning">Watch</button>
												  <button type="button" class="btn btn-danger dropdown-toggle px-3" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="sr-only">Mobile</span>
												  </button>
												  <div class="dropdown-menu ">
												  <a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Smart Watch</a>
												  <a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Analog Watch</a>

												</div>
												</div>
												
												<div class="btn-group">
												  <button type="button" class="btn btn-warning">Laptop</button>
												  <button type="button" class="btn btn-danger dropdown-toggle px-3" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="sr-only">Mobile</span>
												  </button>
												  <div class="dropdown-menu " >
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Dell</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">HP</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Samsung </a>
					                                <a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">accer</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">lenovo</a>
													
													
												  </div>
												</div>
												
												<div class="btn-group">
												  <button type="button" class="btn btn-warning">Television</button>
												  <button type="button" class="btn btn-danger dropdown-toggle px-3" data-toggle="dropdown" aria-haspopup="true"
													aria-expanded="false">
													<span class="sr-only">Mobile</span>
												  </button>
												  <div class="dropdown-menu">
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">Smart Television</a>
													<a class="dropdown-item" href="http://localhost/ministore/?category=24&in_stock=&search_in_title=&order_new=&order_price=&order_procurement=&brand_id=&price_from=&price_to=">LED Television</a>
													
													
												  </div>
												</div>
								   </ul>
									
                                </li>
								  
								<?php
                                if (!empty($nonDynPages)) {
                                    foreach ($nonDynPages as $addonPage) {
                                        ?>
                                        <li<?= uri_string() == $addonPage || uri_string() == MY_LANGUAGE_ABBR . '/' . $addonPage ? ' class="active"' : '' ?>><a href="<?= LANG_URL . '/' . $addonPage ?>"><?= mb_ucfirst(lang($addonPage)) ?></a></li>
                                        <?php
                                    }
                                }
                                if (!empty($dynPages)) {
                                    foreach ($dynPages as $addonPage) {
                                        ?>
                                        <li<?= urldecode(uri_string()) == 'page/' . $addonPage['pname'] || uri_string() == MY_LANGUAGE_ABBR . '/' . 'page/' . $addonPage['pname'] ? ' class="active"' : ''
                                        ?>><a href="<?= LANG_URL . '/page/' . $addonPage['pname'] ?>"><?= mb_ucfirst($addonPage['lname']) ?></a></li>
                                            <?php
                                        }
                                    }
                                    ?>

                                <li<?= uri_string() == 'shopping-cart' || uri_string() == MY_LANGUAGE_ABBR . '/shopping-cart' ? ' class="active"' : '' ?>><a href="<?= LANG_URL . '/shopping-cart' ?>"><?= lang('shopping_cart') ?></a></li>
                                <li<?= uri_string() == 'checkout' || uri_string() == MY_LANGUAGE_ABBR . '/checkout' ? ' class="active"' : '' ?>><a href="<?= LANG_URL . '/checkout' ?>"><?= lang('checkout') ?></a></li>
                                <li<?= uri_string() == 'contacts' || uri_string() == MY_LANGUAGE_ABBR . '/contacts' ? ' class="active"' : '' ?>><a href="<?= LANG_URL . '/contacts' ?>"><?= lang('contacts') ?></a></li>
                                <?php if (isset($_SESSION['logged_user'])) { ?>
                                    <li<?= uri_string() == 'myaccount' || uri_string() == MY_LANGUAGE_ABBR . '/myaccount' ? ' class="active"' : '' ?>>
                                        <a href="<?= LANG_URL . '/myaccount' ?>" class="my-acc">
                                            <?= lang('my_acc') ?>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= LANG_URL . '/logout' ?>" class="my-acc-logout">
                                            <?= lang('logout') ?>
                                        </a>
                                    </li>
                                <?php } else { ?>
                                    <li>
                                        <a href="<?= LANG_URL . '/login' ?>" class="my-acc-login">
                                            <?= lang('login') ?>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="<?= LANG_URL . '/register' ?>" class="my-acc-register">
                                            <?= lang('register') ?>
                                        </a>
                                    </li>
                                <?php } ?>
                            </ul>
                        </div>
                    </div>
                </nav>
				<script>
				$(document).ready(function(){
				  $('.dropdown-submenu a.test').on("click", function(e){
					$(this).next('ul').toggle();
					e.stopPropagation();
					e.preventDefault();
				  });
				});
				</script>