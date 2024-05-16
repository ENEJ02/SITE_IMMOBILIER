<?php
require_once "functions.inc.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Bootstrap CSS v@5.3.3 -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <!-- Font family -->
  <link
    href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300;400;700&family=Roboto:wght@300;400;700;900&display=swap"
    rel="stylesheet">
  <!-- Icons Bootstrap -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
  <!-- mon style -->
  <link rel="stylesheet" href="<?= RACINE_SITE ?>/assets/css/style.css">

  <title>
    <?= $title ?>
  </title>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-md">
      <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item">
              <a class="MynaV nav-link active" aria-current="page" href="accueil.php">ACCUEIL</a>
            </li>
            <li class="nav-item">
              <a class="MynaV nav-link" href="ajout_annonce.php">AJOUTER UNE ANNONCES</a>
            </li>
            <li class="nav-item">
              <a class="MynaV nav-link" href="annonces.php">CONSULTER TOUTES LES ANNONCES</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>