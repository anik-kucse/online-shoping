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
                    <h1 class="page-header">Cart Details</h1>
                    <div class="table-responsive">
                        <?php if(!empty($products)) {
                            $total = 0; ?>
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
                                    <?php
                                    $i = 0;
                                    foreach ($products as $item) {
                                        $total = $total + $item['product_info']['price']*$item['product_quantity'];
                                        ?>
                                        <tr>
                                            <td class="relative">
                                                <img class="product-image" src="<?= base_url('/attachments/shop_images/' . $item['product_info']['image']) ?>" alt="">
                                            </td>
                                            <td><a href="<?= LANG_URL . '/' . $item['product_info']['url'] ?>"><?= $productName[$i] ?></a></td>
                                            <td><?= $item['product_quantity'] ?></td>
                                            <td><?= $item['product_info']['price'] . CURRENCY ?></td>
                                            <td><?= $item['product_info']['price']*$item['product_quantity'] . CURRENCY ?></td>
                                        </tr>
                                    <?php $i++; } ?>
                                    <tr>
                                        <td colspan="4" class="text-right"><?= lang('total') ?></td>
                                        <td><span class="final-amount"><?= $total ?></span><?= CURRENCY ?></td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
