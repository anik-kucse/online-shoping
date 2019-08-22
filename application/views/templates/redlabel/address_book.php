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

    h3{
        color: grey;
    }

</style>
<div id="myAccount">
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
                    <h1 class="page-header">Account Information</h1>
                    <div id="address">
                        <div id="my_address">
                            <h3>My Address</h3>
                            <div class="col-md-12" id="detailsAddress" style="padding-top: 10px">
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">First Name</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="firstName" name="firstName" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Last Name</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="lastName" name="lastName" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Email</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="email" name="email" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Phone Number</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="phone" name="phone" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Address</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control" id="address" name="address" readonly></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">City</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="city" name="city" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Post Code</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="postCode" name="postCode" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label"><a href="#">Edit Address</a></label>
                                </div>
                            </div>
                            <br>
                        </div>
                        <br>
                        <br>
                        <div id="order_address">
                            <h3 >Orders Address</h3>
                            <div class="col-md-12" id="detailsOrdersAddress" >
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">First Name</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="firstName" name="firstName" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Last Name</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="lastName" name="lastName" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Email</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="email" name="email" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Phone Number</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="phone" name="phone" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Address</label>
                                    <div class="col-md-10">
                                        <textarea class="form-control" id="address" name="address" readonly></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">City</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="city" name="city" ></label>
                                    </div>
                                </div>
                                <div class="col-md-12 from-control row">
                                    <label class="col-md-2 col-form-label">Post Code</label>
                                    <div class="col-md-10">
                                        <label class="form-control" type="text" id="postCode" name="postCode" ></label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>