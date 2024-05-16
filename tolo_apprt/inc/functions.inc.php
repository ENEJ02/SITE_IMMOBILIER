<!-- Fichier qui contient les fonctions php à utiliser dans notre site -->
<?php

session_start();

define("RACINE_SITE", "/evaluation_julius/tolo_apprt/"); // constante qui définit les dossiers dans lesquels se situe le site pour pouvoir déterminer des chemin absolus à partir de localhost (on ne prend pas locahost). Ainsi nous écrivons tous les chemins (exp : src, href) en absolus avec cette constante.


///////////////////////////// Fonction de débugage //////////////////////////
function debug($mavar)
{
    echo '<pre class="alert alert-warning">';
    var_dump($mavar);
    echo '</pre>';
}
// 1- Connexion à la BDD
$pdoBlog = new PDO(
    'mysql:host=localhost;
    dbname=php_intermediaire_julius',
    'root',
    '',
    array(
        PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING,
        PDO::MYSQL_ATTR_INIT_COMMAND => 'SET NAMES utf8',
    )
);
//////////////////////////  Fonction de connexion à la BDD //////////////////////////

// Constante du serveur => localhost
define("DBHOST", "localhost");

// Constante de l'utilisateur de la BDD du serveur en local  => root
define("DBUSER", "root");

// Constante pour le mot de passe de serveur en local => pas de mot de passe
define("DBPASS", "");

// Constante pour le nom de la BDD
define("DBNAME", "php_intermediaire_julius");

function connexionBdd()
{

    // Sans la variable $dsn et sans le constantes, on se connecte à la BDD :

    // $pdo = new PDO('mysql:host=localhost;dbname=teamofmali;charset=utf8', 'root', '');

    // avec la variable DSN (Data Source Name) et les constantes

    // $dsn = "mysql:host=localhost;dbname=cinema;charset=utf8";

    $dsn = "mysql:host=" . DBHOST . ";dbname=" . DBNAME . ";charset=utf8";

    try {

        $pdo = new PDO($dsn, DBUSER, DBPASS);

        // On définit le mode d'erreur de PDO sur Exception
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $pdo->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
    } catch (PDOException $e) {

        die($e->getMessage());
    }

    return $pdo;
}

////////permet de recuperer les id Annonce

function show_annonce($id): mixed
{
    $id = (int) $id;
    $pdo = connexionBdd();
    $sql = "SELECT * FROM advert WHERE id_advert = :id ";
    $request = $pdo->prepare($sql);
    $request->execute(
        array(
            ':id' => $id
        )
    );
    $result = $request->fetch();
    return $result;
}


////// afficher tout les annonces////
function allAdvert(): array
{

    $pdo = connexionBdd();
    $sql = "SELECT * FROM advert";
    $request = $pdo->query($sql);
    $result = $request->fetchAll();
    return $result;
}


// ///////////  Fonction pour ajouter une annonce  ////////////

function addAnnonce(string $photo, string $title, string $description,
 string $postal_code, string $city, string $type, float $price): void
{
    $pdo = connexionBdd();

    $sql = "INSERT INTO advert (photo, title, description, postal_code, city, type, price)
     VALUES (:photo, :title, :description, :postal_code, :city, :type, :price)";

    $request = $pdo->prepare($sql);
    $request->execute(
        array(
            ':photo' => $photo,
            ':title' => $title,
            ':description' => $description,
            ':postal_code' => $postal_code,
            ':city' => $city,
            ':type' => $type,
            ':price' => $price
        )
    );
}





