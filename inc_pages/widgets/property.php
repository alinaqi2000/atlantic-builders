<div class="ltn__product-item ltn__product-item-4 text-center---">
    <div class="product-img">
        <a href="<?= $path ?>property/<?= $property['prop_slug'] ?>"><img src="<?= $path ?>uploads/properties/<?= $property['prop_image'] ?>" alt="Property Image"></a>
        <div class="product-badge">
            <ul>
                <li class="sale-badge cursor-default <?= $bg ?>">FOR <?= ucwords($property['prop_type']) ?></li>
            </ul>
        </div>
        <div class="product-img-location-gallery">
            <div class="product-img-location">
                <ul>
                    <li>
                        <a href="<?= $path ?>property/<?= $property['prop_slug'] ?>"><i class="flaticon-pin"></i> <?= $property['prop_location'] ?></a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="product-info">

        <h2 class="product-title"><a href="<?= $path ?>property/<?= $property['prop_slug'] ?>"><?= $property['prop_title'] ?></a></h2>
        <div class="product-description">
            <p><?= $property['prop_short_desc'] ?></p>
        </div>

    </div>

</div>