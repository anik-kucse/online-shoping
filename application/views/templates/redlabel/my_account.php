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
                        <li class="active"><a href="#">My Orders <span class="sr-only">(current)</span></a></li>
                        <li><a href="#">Address Book</a></li>
                        <li><a href="#">Change Password</a></li>

                    </ul>
                </div>

                <div class="col-sm-10 main">
                    <h1 class="page-header">My Orders</h1>
                    <div class="table-responsive">
                        <table class="table table-bordered table-products">
                            <thead>
                                <tr>
                                    <th><?= lang('product') ?></th>
                                    <th><?= lang('title') ?></th>
                                    <th><?= lang('quantity') ?></th>
                                    <th><?= lang('price') ?></th>
                                    <th><?= lang('total') ?></th>
                                    <th><?= lang('details') ?></th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>