<?php

require_once "inc/functions.inc.php";

if (isset($_GET['action']) && isset($_GET['id'])) {
    if (!empty($_GET['action']) && $_GET['action'] && !empty($_GET['id'])) {
        $id_advert = $_GET['id'];
        $advert = show_annonce($id_advert);
    }  
} else {
    header("location:" . RACINE_SITE . "index.php");
}

require_once "inc/header.inc.php";;

?>
<div  class="mycard card col-12 col-md-4 p-1 my-3">
    <img src="<?= $advert['photo'] ?>" class="imgAnnonce card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title"><?= $advert['title'] ?></h5>
        <p class="card-text"><?= $advert['description']?></p>
        <p class="price card-text"><?= $advert['price'] ?>€ Prix </p>
        <p class="card-text"><?= $advert['city'] ?> </p>
        <p class="card-text"><?= $advert['postal_code'] ?> </p>
      
    </div>
    <div class="form-group">
        <label for="type_annonce">Type d'annonce:</label>
        <select id="type_annonce" name="type" class="form-control">
            <option value="location">Location</option>
            <option value="vente">Vente</option>
        </select>
    </div>
</div>

<div class="container text-center">
  <section class="">
    <div class=""></div>


    <?php if (!$advert['reservation_message']) { ?>
      <form action="" method="post">
        <fieldset>
          <legend>Réservation du bien</legend>
          <div class="form-floating">
            <textarea name="reservation_message" class="form-control" placeholder="Leave a comment here" id="reserv"></textarea>
            <label for="reservation_message">Message</label>
          </div>
          <div class="btn-container my-3">
            <button type="submit" class="btn btn-primary">Submit</button>
          </div>
        </fieldset>
      </form>
    <?php } else { ?>
      <div class="bg-danger-subtle p-3 my-4 border border-danger rounded">
        Ce bien a deja eté réservé. <br>
        Message de réservaiton: "<?= $advert['reservation_message'] ?>"
      </div>
    <?php } ?>
  </section>
</div>
