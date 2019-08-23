<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<div class="container" id="checkout-page">
    <?php
    if ($cartItems['array'] != null) {
        var_dump($cartItems);
        ?>
        <?= purchase_steps(1, 2) ?>
        <div class="row">
            <div class="col-sm-9 left-side">
                <form method="POST" id="goOrder">
                    <div class="title alone">
                        <span><?= lang('checkout') ?></span>
                    </div>
                    <?php
                    if ($this->session->flashdata('submit_error')) {
                        ?>
                        <hr>
                        <div class="alert alert-danger">
                            <h4><span class="glyphicon glyphicon-alert"></span> <?= lang('finded_errors') ?></h4>
                            <?php
                            foreach ($this->session->flashdata('submit_error') as $error) {
                                echo $error . '<br>';
                            }
                            ?>
                        </div>
                        <hr>
                        <?php
                    }
                    ?>
                    <div class="payment-type-box">
                        <select class="selectpicker payment-type" data-style="btn-blue" name="payment_type">
                            <?php if ($cashondelivery_visibility == 1) { ?>
                                <option value="cashOnDelivery"><?= lang('cash_on_delivery') ?> </option>
                            <?php } if (filter_var($paypal_email, FILTER_VALIDATE_EMAIL)) { ?>
                                <option value="PayPal"><?= lang('paypal') ?> </option>
                            <?php } if ($bank_account['iban'] != null) { ?>
                                <option value="Bank"><?= lang('bank_payment') ?> </option>
                            <?php } ?>
                        </select>
                        <span class="top-header text-center"><?= lang('choose_payment') ?></span>
                    </div>
                    <div class="row">
                        <div class="form-group col-sm-6">
                            <label for="firstNameInput">First Name(<sup><?= lang('requires') ?></sup>)</label>
                            <input id="firstNameInput" class="form-control has-error" name="first_name" value="<?= @$_POST['first_name'] ?>" type="text" placeholder="First name">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="lastNameInput">Last Name(<sup><?= lang('requires') ?></sup>)</label>
                            <input id="lastNameInput" class="form-control" name="last_name" value="<?= @$_POST['last_name'] ?>" type="text" placeholder="Last name">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="emailAddressInput"><?= lang('email_address') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="emailAddressInput" class="form-control" name="email" value="<?= @$_POST['email'] ?>" type="text" placeholder="<?= lang('email_address') ?>">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="phoneInput"><?= lang('phone') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="phoneInput" class="form-control" name="phone" value="<?= @$_POST['phone'] ?>" type="text" placeholder="<?= lang('phone') ?>">
                        </div>
                        <div class="form-group col-sm-12">
                            <label for="addressInput"><?= lang('address') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <textarea id="addressInput" name="address" class="form-control" rows="3"><?= @$_POST['address'] ?></textarea>
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="cityInput"><?= lang('city') ?> (<sup><?= lang('requires') ?></sup>)</label>
                            <input id="cityInput" class="form-control" name="city" value="<?= @$_POST['city'] ?>" type="text" placeholder="<?= lang('city') ?>">
                        </div>
                        <div class="form-group col-sm-6">
                            <label for="postInput"><?= lang('post_code') ?></label>
                            <input id="postInput" class="form-control" name="post_code" value="<?= @$_POST['post_code'] ?>" type="text" placeholder="<?= lang('post_code') ?>">
                        </div>
                        <div class="form-group col-sm-12">
                            <label for="notesInput"><?= lang('notes') ?></label>
                            <textarea id="notesInput" class="form-control" name="notes" rows="3"><?= @$_POST['notes'] ?></textarea>
                        </div>
                    </div>
                    <?php if ($codeDiscounts == 1) { ?>
                        <div class="discount">
                            <label>Token</label>
                            <input class="form-control" name="discountCode" value="<?= @$_POST['discountCode'] ?>" placeholder="Enter Token To Auto Fill" type="text">
                            <a href="javascript:void(0);" class="btn btn-default" onclick="fillData()">Fill</a>
                        </div>
                    <?php } ?>
                    <div class="table-responsive">
                        <table class="table table-bordered table-products">
                            <thead>
                                <tr>
                                    <th><?= lang('product') ?></th>
                                    <th><?= lang('title') ?></th>
                                    <th><?= lang('quantity') ?></th>
                                    <th><?= lang('price') ?></th>
                                    <th><?= lang('total') ?></th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($cartItems['array'] as $item) { ?>
                                    <tr>
                                        <td class="relative">
                                            <input type="hidden" name="id[]" value="<?= $item['id'] ?>">
                                            <input type="hidden" name="quantity[]" value="<?= $item['num_added'] ?>">
                                            <img class="product-image" src="<?= base_url('/attachments/shop_images/' . $item['image']) ?>" alt="">
                                            <a href="<?= base_url('home/removeFromCart?delete-product=' . $item['id'] . '&back-to=checkout') ?>" class="btn btn-xs btn-danger remove-product">
                                                <span class="glyphicon glyphicon-remove"></span>
                                            </a>
                                        </td>
                                        <td><a href="<?= LANG_URL . '/' . $item['url'] ?>"><?= $item['title'] ?></a></td>
                                        <td>
                                            <a class="btn btn-xs btn-primary refresh-me add-to-cart <?= $item['quantity'] <= $item['num_added'] ? 'disabled' : '' ?>" data-id="<?= $item['id'] ?>" href="javascript:void(0);">
                                                <span class="glyphicon glyphicon-plus"></span>
                                            </a>
                                            <span class="quantity-num">
                                                <?= $item['num_added'] ?>
                                            </span>
                                            <a class="btn  btn-xs btn-danger" onclick="removeProduct(<?= $item['id'] ?>, true)" href="javascript:void(0);">
                                                <span class="glyphicon glyphicon-minus"></span>
                                            </a>
                                        </td>
                                        <td><?= $item['price'] . CURRENCY ?></td>
                                        <td><?= $item['sum_price'] . CURRENCY ?></td>
                                    </tr>
                                <?php } ?>
                                <tr>
                                    <td colspan="4" class="text-right"><?= lang('total') ?></td>
                                    <td>
                                        <span class="final-amount"><?= $cartItems['finalSum'] ?></span><?= CURRENCY ?>
                                        <input type="hidden" class="final-amount" name="final_amount" value="<?= $cartItems['finalSum'] ?>">
                                        <input type="hidden" name="amount_currency" value="<?= CURRENCY ?>">
                                        <input type="hidden" name="discountAmount" value="">
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div>
                    <a href="<?= LANG_URL ?>" class="btn btn-primary go-shop">
                        <span class="glyphicon glyphicon-circle-arrow-left"></span>
                        <?= lang('back_to_shop') ?>
                    </a>
                    <a href="javascript:void(0);" class="btn btn-primary go-order" onclick="document.getElementById('goOrder').submit();" class="pull-left">
                        <?= lang('custom_order') ?>
                        <span class="glyphicon glyphicon-circle-arrow-right"></span>
                    </a>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="col-sm-3"> 
                <div class="filter-sidebar">
                    <div class="title">
                        <span><?= lang('best_sellers') ?></span>
                        <i class="fa fa-trophy" aria-hidden="true"></i>
                    </div>
                    <?= $load::getProducts($bestSellers, '', true) ?>
                </div>
            </div>
        </div>
    </div>
	<script src="https://unpkg.com/jspdf@latest/dist/jspdf.min.js"></script>
	<script>
				var doc = new jsPDF();
		var specialElementHandlers = {
			'#editor': function (element, renderer) {
				return true;
			}
		};
		var length = 4;
			var a = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890".split("");
			var b = [];  
			for (var i=0; i<length; i++) {
				var j = (Math.random() * (a.length-1)).toFixed(0);
				b[i] = a[j];
			}	
			var txt;
			
			document.getElementById("phoneInput").value = "+880";
			
			function fillData(){		
			document.getElementById("firstNameInput").value = Cookies.set('firstNameInput');
			document.getElementById("lastNameInput").value = Cookies.set('lastNameInput');
			document.getElementById("emailAddressInput").value = Cookies.set('emailAddressInput');
			document.getElementById("phoneInput").value = Cookies.set('phoneInput');
			document.getElementById("addressInput").value = Cookies.set('addressInput');
			document.getElementById("cityInput").value = Cookies.set('cityInput');
			document.getElementById("postInput").value = Cookies.set('postInput');
			document.getElementById("notesInput").value = Cookies.set('notesInput');		
	}
	function fillSummeryData(){
		    document.getElementById("title").value = Cookies.set('title');
			document.getElementById("quantity").value = Cookies.set('quantity');
			document.getElementById("price").value = Cookies.set('price');
			document.getElementById("total").value = Cookies.set('total');
			
			// set data
			Cookies.set('title', title);
			Cookies.set('quantity', quantity);
			Cookies.set('price', price);
			Cookies.set('total', total);
	}
			
	function myFunction() {
		
					
			if(validateMe()){
				alert('hi');
				
			doc.fromHTML($('table ').html(), 15, 15, {
        'width': 170,
            'elementHandlers': specialElementHandlers
    });
    doc.save('sample-file.pdf');
			//document.getElementById('goOrder').submit();
			
			}
			
			function savePageAs(fileName){
			  if(!fileName){fileName = location.href.toString(); }
			  var X=new XMLHttpRequest, data="";
			  X.open('GET', fileName, false );
			  X.send('');	
			  data = X.responseText;
			 return window.open( "data:x-application/external;charset=utf-8," + escape(data));
			}//
			
			}
			
			function validateMe(){
			var firstNameInput = document.getElementById("firstNameInput").value;
			
			if(firstNameInput == ""){
				alert('Fill First Name')
				return false;
			}
			
			var lastNameInput = document.getElementById("lastNameInput").value;
			
			if(lastNameInput == ""){
				alert('Fill Last Name')
				return false;
			}
			var emailAddressInput = document.getElementById("emailAddressInput").value;
			
			var phoneInput = document.getElementById("phoneInput").value;
			
			if(phoneInput.length != 14){			
				if(isNaN(phoneInput)){
				alert('phone number invalid');
				return false;
				}
				alert('phone number invalid');
				return false;
			}
			
			var addressInput = document.getElementById("addressInput").value;
			
			if(addressInput == "" ){
				alert('Fill Address')
				return false;
			}
			
			var cityInput = document.getElementById("cityInput").value;
			if(cityInput == ""){
				alert('Fill City Input')
				return false;
			}
			var postInput = document.getElementById("postInput").value;
			
			if(postInput.length != 4){			
				if(isNaN(postInput)){
				alert('Postal Code invalid');
				return false;
				}
				alert('Postal Code invalid');
				return false;
			}
			
			var notesInput = document.getElementById("notesInput").value;
			
			Cookies.set('firstNameInput', firstNameInput);
			Cookies.set('lastNameInput', lastNameInput);
			Cookies.set('emailAddressInput', emailAddressInput);
			Cookies.set('phoneInput', phoneInput);
			Cookies.set('addressInput', addressInput);
			Cookies.set('cityInput', cityInput);
			Cookies.set('postInput', postInput);
			Cookies.set('notesInput', notesInput);
			
			var person = prompt("copy Your Token", b.join(""));
					if (person == null || person == "") {
					txt = "User cancelled the prompt.";
					}
			
				return true;				
			}
	
	</script>
<?php } else { ?>
    <div class="alert alert-info"><?= lang('no_products_in_cart') ?></div>
    <?php
}
if ($this->session->flashdata('deleted')) {
    ?>
    <script>
	
        $(document).ready(function () {
            ShowNotificator('alert-info', '<?= $this->session->flashdata('deleted') ?>');
        });
    </script>
<?php } if ($codeDiscounts == 1 && isset($_POST['discountCode'])) { ?>
    <script>
        $(document).ready(function () {
            checkDiscountCode();
        });
    </script>
<?php } ?>