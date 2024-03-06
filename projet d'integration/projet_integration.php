<?php
// Connexion à la base de données
$serveur = "localhost"; // Adresse du serveur MySQL
$utilisateur = "root"; // Nom d'utilisateur MySQL
$motdepasse = ""; // Mot de passe MySQL
$base_de_donnees = "etudiant"; // Nom de la base de données MySQL

// Connexion
$connexion = new mysqli($serveur, $utilisateur, $motdepasse, $base_de_donnees);

// Vérifier la connexion
if ($connexion->connect_error) {
    die("Échec de la connexion : " . $connexion->connect_error);
}

// Vérifier si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Récupérer les données du formulaire
    $etud1 = $_POST["etud1"];
    $etud2 = $_POST["etud2"];
    $gr1 = $_POST["gr1"];
    $gr2 = $_POST["gr2"];
    $etud1_email = $_POST["etud1_email"];
    $etud2_email = $_POST["etud2_email"];
    $titre = $_POST["titre"];
    $enci = $_POST["enci"];
    $nome = $_POST["nome"];
    $ence = $_POST["ence"];

    // Requête SQL pour insérer les données dans la table 'etudiant'
    $sql_etudiant = "INSERT INTO etudiant (nomprenom_etud1, nomprenom_etud2, groupe_etud1, groupe_etud2, email_etud1, email_etud2) VALUES ('$etud1', '$etud2', '$gr1', '$gr2', '$etud1_email', '$etud2_email')";

    // Exécution de la requête SQL pour insérer les données dans la table 'etudiant'
    if ($connexion->query($sql_etudiant) === TRUE) {
        // Récupérer l'identifiant auto-incrémenté de l'étudiant 1
        $ncin_etud1 = $connexion->insert_id;

        // Requête SQL pour insérer les données dans la table 'projet'
        $sql_projet = "INSERT INTO projet (ncin_etud1, titre, sujet, encadreur_iset, nom_entreprise, encadreur_entreprise) VALUES ('$ncin_etud1', '$titre', '', '$enci', '$nome', '$ence')";

        // Exécution de la requête SQL pour insérer les données dans la table 'projet'
        if ($connexion->query($sql_projet) === TRUE) {
            echo "Les données ont été insérées avec succès.";
        } else {
            echo "Erreur lors de l'insertion dans la table 'projet' : " . $connexion->error;
        }
    } else {
        echo "Erreur lors de l'insertion dans la table 'etudiant' : " . $connexion->error;
    }

    // Fermer la connexion
    $connexion->close();
}

