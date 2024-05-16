<?php
$title = "Accueil";

require_once "inc/functions.inc.php";

// 2- Requête pour afficher les 15 annonces les plus récentes
$pdo = connexionBdd();
$requete = $pdo->query("SELECT * FROM advert ORDER BY id_advert DESC ");

$info = "";
require_once "inc/header.inc.php";
?>

<main class="container">
    <header class="p-5 mb-4 rounded-bottom">
        <section class="container-fluid py-5">
            <h1 class="display-5 fw-bold">Affichage de toutes les annonces </h1>
        </section>
    </header>
    
    <section class="containerCard row gap-2">
        <?php
        // affichage des annonces
        while ($advert = $requete->fetch(PDO::FETCH_ASSOC)) {
            echo '
                <div class="card col-12 col-md-4 p-1 my-3">
                ' . ($advert['reservation_message'] ? "<span class='btn btn-danger'><i class='fa-solid fa-bookmark'></i> Réservé</span>" : "") . '
                    <img src="' . $advert['photo'] . '" class="imgAnnonce card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">' . $advert['title'] . '</h5>
                        <p class="card-text">' . substr($advert['description'], 0, 100) . '....</p>
                        <a href="show_annonce.php?action=show&id=' . $advert['id_advert'] . '" class="btn btn-primary">Voir annonce</a>
                        <p class="price card-text">' . $advert['price'] . '€ Prix </p>
                        <p class="card-text">' . $advert['city'] . '</p>
                    </div>
                </div>';
        }
        ?>
    </section>
</main>

<?php
require_once "inc/footer.inc.php";
?>