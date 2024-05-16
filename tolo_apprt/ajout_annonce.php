<?php
// Inclusion des fichiers 
require_once "inc/functions.inc.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $photo = $_POST['photo'];
    $title = $_POST['title'] ?? '';
    $description = $_POST['description'] ?? '';
    $postal_code = $_POST['postal_code'] ?? '';
    $city = $_POST['city'] ?? '';
    $type = $_POST['type'] ?? '';
    $price = $_POST['price'] ?? '';

    addAnnonce($photo, $title, $description,$postal_code, $city, $type, $price);
}


require_once "inc/header.inc.php";

// var_dump($_POST);
?>



<!-- Formulaire d'ajout d'annonce immobilière -->
<form action="" method="post" class="form-responsive">
    <!-- Champ de sélection de photo -->
    <div class="form-group">
        <label for="photo">Photo:</label>
        <input type="text" id="photo" name="photo" class="form-control">
    </div>

    <!-- Champ de saisie du titre de l'annonce -->
    <div class="form-group">
        <label for="titre">Titre de l'annonce:</label>
        <input type="text" id="titre" name="title" class="form-control">
    </div>

    <!-- Champ de saisie de la description de l'annonce -->
    <div class="form-group">
        <label for="description">Description de l'annonce:</label>
        <textarea id="description" name="description" class="form-control"></textarea>
    </div>

    <!-- Champ de saisie du code postal du bien immobilier -->
    <div class="form-group">
        <label for="code_postal">Code Postal du bien immobilier:</label>
        <input type="text" id="code_postal" name="postal_code" class="form-control">
    </div>

    <!-- Champ de saisie de la ville du bien immobilier -->
    <div class="form-group">
        <label for="ville">Ville du bien immobilier:</label>
        <input type="text" id="ville" name="city" class="form-control">
    </div>

    <!-- Champ de sélection du type d'annonce (location ou vente) -->
    <div class="form-group">
        <label for="type_annonce">Type d'annonce:</label>
        <select id="type_annonce" name="type" class="form-control">
            <option value="location">Location</option>
            <option value="achat">Vente</option>
        </select>
    </div>

    <!-- Champ de saisie du prix -->
    <div class="form-group">
        <label  for="prix">Prix:</label>
        <input type="number" id="prix" name="price" class="form-control">
    </div>

    <!-- Autres champs de formulaire... -->

    <!-- Bouton de soumission du formulaire -->
    <div class="form-group">
        <input type="submit" value="Envoyer" class="btn btn-primary">
    </div>
</form>