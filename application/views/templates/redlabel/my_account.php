<?php
defined('BASEPATH') OR exit('No direct script access allowed');
?>
<style>
    #sideBar{
        border-style: hidden;
        border-width: 2px;
        border-color: grey;
        border-radius: 8px;
        height: auto;
    }

</style>
<div id="myAccount">
    <div class="container">
        <div class="container-fluid">
            <div class="row" id="sideBar">
                <div class="col-md-2 sidebar" >
                    <ul class="nav nav-sidebar">
                        <li class="active"><a href="<?= base_url('myaccount') ?>">My Orders <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Address Book</a></li>
                        <li><a href="#">Change Password</a></li>

                    </ul>
                </div>

                <div class="col-sm-10 main">
                    <h1 class="page-header">My Orders</h1>
                    <?php if (!empty($orders_history)) {?>
                        <div class="table-responsive">
                            <table class="table table-bordered table-products">
                                <thead>
                                <tr>
                                    <th>Order No</th>
                                    <th>Order Date</th>
                                    <th>Ship To</th>
                                    <th>Order Total (BDT)</th>
                                    <th>Status</th>
                                </tr>
                                </thead>
                                <tbody>
                                <?php foreach ($orders_history as $id => $order){
                                    ?>
                                    <tr>
                                        <td><a target="_parent" href="<?= base_url('amarissa') ?>"><?= $order['order_id'] ?></a></td>
                                        <td><?= date('d.m.Y', $order['date'])?></td>
                                        <td><?= $order['address']?></td>
                                        <?php
                                        $product = unserialize($order['products']);
                                        $total = 0;
                                        foreach ($product as $item) {
                                            $total = $total + intval($item['product_info']['price']);
                                        } ?>
                                        <td><?= $total?></td>
                                        <td><?php if($order['viewed'] == "1") {
                                                echo "Confirmed";
                                            } else{
                                                echo "Pending";
                                            } ?></td>
                                    </tr>
                                <?php } ?>
                                </tbody>
                            </table>
<!--                            --><?//= $links_pagination ?>
                        </div>
                    <?php } else{
                        echo "no order made so fur";
                    }?>
                </div>
            </div>
        </div>
    </div>
</div>