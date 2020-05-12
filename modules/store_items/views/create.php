<h1><?= $headline ?></h1>
<?= validation_errors() ?>
<div class="w3-card-4">
    <div class="w3-container primary">
        <h4>Store Item Details</h4>
    </div>
    <form class="w3-container" action="<?= $form_location ?>" method="post">

        <p>
            <label class="w3-text-dark-grey"><b>Item Title</b></label>
            <input type="text" name="item_title" value="<?= $item_title ?>" class="w3-input w3-border w3-sand" placeholder="Enter Item Title">
        </p>
<!--         <p>
            <label class="w3-text-dark-grey"><b>Item Code</b></label>
            <input type="text" name="item_code" value="<?= $item_code ?>" class="w3-input w3-border w3-sand" placeholder="Enter Item Code">
        </p> -->
        <p>
            <label class="w3-text-dark-grey"><b>Item Price</b></label>
            <input type="text" name="item_price" value="<?= $item_price ?>" class="w3-input w3-border w3-sand" placeholder="Enter Item Price">
        </p>
        <p>
            <label class="w3-text-dark-grey"><b>Item Description</b></label>
            <textarea name="item_description" class="w3-input w3-border w3-sand" placeholder="Enter Item Description here..."><?= $item_description ?></textarea>
        </p>
        <p>
            <label class="w3-text-dark-grey">Item Stock</label>
            <input name="item_stock" class="w3-check" type="checkbox" value="1"<?php if ($item_stock==1) { echo ' checked="checked"'; } ?>>
        </p>
        <p> 
            <?php 
            $attributes['class'] = 'w3-button w3-white w3-border';
            echo anchor($cancel_url, 'CANCEL', $attributes);
            ?> 
            <button type="submit" name="submit" value="Submit" class="w3-button w3-medium primary"><?= $btn_text ?></button>
        </p>
    </form>
</div>

<script>
$('.datepicker').datepicker();
$('.datetimepicker').datetimepicker({
    separator: ' at '
});
$('.timepicker').timepicker();
</script>