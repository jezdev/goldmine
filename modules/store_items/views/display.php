        <ul class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li><a href="#">Designer Jewellery</a></li>
            <li><a href="#">Watches</a></li>
            <li>Citizen Eco-Drive AT9013-03H</li>
        </ul>

        <section class="item">
            <div>
                <div class="image-gallery">
                    <img class="image-gallery-main" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch1.jpg" alt="Image of hand">
                    <img class="thumb" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch1.jpg" alt="Image of earth">
                    <img class="thumb" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch2.jpg" alt="Image of earth">
                    <img class="thumb" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch3.jpg" alt="Image of earth">
                    <img class="thumb" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch4.jpg" alt="Image of earth">
                    <img class="thumb" src="<?= BASE_URL ?>images/sample_item_pics/sample_item/watch5.jpg" alt="Image of earth">
                </div>
            </div>
            <div>
                <h1><?= $item_obj->item_title; /*var_dump($data);die();*/ ?></h1>
                <p><b>Item Code:</b>x</p>
                <p><b>In Stock:</b> <span class="tick">&#10004;</span></p>
                <p class="price"><span class="smaller">$</span>x</p>
              	x
            </div>
            <div class="add-to-cart">
                <p class="price">$888.00</p>

                <form class="form-vertical">
                    <label>Color</label>
                    <select>
                        <option value="0">Select Color...</option>
                        <option value="1">Gold</option>
                        <option value="2">Silver</option>
                        <option value="3">Black</option>
                    </select>

                    <label>Quantity</label>
                    <select>
                        <option value="0">Select Quantity...</option>
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                    </select>

                    <input type="submit" name="submit" value="Add To Basket" class="btn btn-gold">
                    <p class="add-to-cart-info">This item is eligible for free delivery in Europe and the USA but never in Ireland.</p>
                    <!-- PayPal Logo -->
                    <table border="0" cellpadding="10" cellspacing="0" align="center">
                        <tr>
                            <td align="center"></td>
                        </tr>
                        <tr>
                            <td align="center"><a href="https://www.paypal.com/uk/webapps/mpp/paypal-popup" title="How PayPal Works" onclick="javascript:window.open('https://www.paypal.com/uk/webapps/mpp/paypal-popup','WIPaypal','toolbar=no, location=no, directories=no, status=no, menubar=no, scrollbars=yes, resizable=yes, width=1060, height=700'); return false;"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/AM_SbyPP_mc_vs_ms_ae_UK.png" border="0" alt="PayPal Acceptance Mark"></a></td>
                        </tr>
                    </table>
                </form>

            </div>
        </section>

        <h2 class="center-sub-head">You May Also Like</h2>
        <hr class="hr-4">

        <section class="items other-items">
            <div class="card">
                <img src="<?= BASE_URL ?>images/sample_item_pics/offers/item1.jpg">
                <div class="card-body">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    <a href="#" class="btn btn-secondary">View Item</a>
                </div>
            </div>
            <div class="card">
                <img src="<?= BASE_URL ?>images/sample_item_pics/offers/item2.jpg">
                <div class="card-body">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    <a href="#" class="btn btn-secondary">View Item</a>
                </div>
            </div>
            <div class="card">
                <img src="<?= BASE_URL ?>images/sample_item_pics/offers/item3.jpg">
                <div class="card-body">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    <a href="#" class="btn btn-secondary">View Item</a>
                </div>
            </div>
            <div class="card">
                <img src="<?= BASE_URL ?>images/sample_item_pics/offers/item4.jpg">
                <div class="card-body">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    <a href="#" class="btn btn-secondary">View Item</a>
                </div>
            </div>
            <div class="card">
                <img src="<?= BASE_URL ?>images/sample_item_pics/offers/item5.jpg">
                <div class="card-body">
                    <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.</p>
                    <a href="#" class="btn btn-secondary">View Item</a>
                </div>
            </div>
        </section>
