<?php

  // Définit les constantes de connexions.
  define('DB_HOST', 'localhost');
  define('DB_NAME', 'sommets');
  define('DB_USER', 'root');
  define('DB_PSW', '');

  // Constante qui défini le nombre d'entrée maximum à afficher sur la pagination.
  define('NOMBRE_PAR_PAGE', 20);

  // Variables utilisées lors de la recherche.
  $nom = "";
  $region = "";
  $alt_min = "";
  $alt_max = "";
  $tri = "";
  $sens = "";
  $page = "";

  // Variables d'affichage.
  $totalResults = 0;
  $resultat = '';
  $erreur = '';

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <title>Sommets</title>
  </head>
  <body class="container">

    <h1>Recherche des sommets</h1>

    <form method="get" action="">

      <div class="row">

        <!-- Filtre pour la recherche (nom, region, alt_min et alt_max) sous forme de champs de texte -->
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Filtres</h5>
              <div class="mb-3">
                <label for="nom" class="form-label">Nom</label>
                <input type="text" class="form-control" id="nom" name="nom" value="<?php echo $nom ?>">
              </div>
              <div class="mb-3">
                <label for="region" class="form-label">Région</label>
                <input type="text" class="form-control" id="region" name="region" value="<?php echo $region ?>">
              </div>
              <div class="mb-3">
                <label for="alt_min" class="form-label">Altitude minimum</label>
                <input type="text" class="form-control" id="alt_min" name="alt_min" value="<?php echo $alt_min ?>">
              </div>
              <div class="mb-3">
                <label for="alt_max" class="form-label">Altitude maximum</label>
                <input type="text" class="form-control" id="alt_max" name="alt_max" value="<?php echo $alt_max ?>">
              </div>
            </div>
          </div>
        </div>

        <!-- Tri pour la recherche (tri et sens) sous forme de liste de sélection -->
        <div class="col">
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Tri</h5>
              <select class="form-select" name="tri">
                <option <?php if ($tri == "nom") { echo 'selected'; } ?> value="nom">Nom</option>
                <option <?php if ($tri == "region") { echo 'selected'; } ?> value="region">Région</option>
                <option <?php if ($tri == "altitude") { echo 'selected'; } ?> value="altitude">Altitude</option>
              </select>
              <select class="form-select" name="sens">
                <option <?php if ($sens == "asc") { echo 'selected'; } ?> value="asc">Ascendant</option>
                <option <?php if ($sens == "desc") { echo 'selected'; } ?> value="desc">Descendant</option>
              </select>
            </div>
          </div>

        </div>

      </div>

      <br />

      <!-- Lance la recherche -->
      <button type="submit" name="submit" class="btn btn-primary">Rechercher</button>

      <hr />

      <!-- Pagination de la recherche -->
      <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center">
          <?php for ($pageNum = 0; $pageNum < $totalResults / NOMBRE_PAR_PAGE; $pageNum++) { ?>
            <li class="page-item <?php if ($page == $pageNum + 1) { echo 'active'; } ?>"><button type="submit" name="page" value="<?php echo $pageNum + 1 ?>" class="page-link"><?php echo $pageNum + 1 ?></a></li>
          <?php } ?>
        </ul>
      </nav>

    </form>

    <!-- Affiche le résultat de la recherche -->
    <p><?php echo $resultat ?></p>

    <!-- Affiche l'erreur -->
    <p class="text-bg-danger"><?php echo $erreur ?></p>

  </body>
</html>