<?php

//include_once '../config/header.php';
include_once '../../model/connection.php';
include_once '../../model/utilisateur.php';

$database = new Connection();
$db = $database->getConnection();
$id_utilisateur = $_POST["id_utilisateur"];
$item = new Utilisateur($db);

$item->id_utilisateur = $id_utilisateur;

if ($item->deleteUtilisateur()) {
    echo json_encode("Employee deleted.");
} else {
    echo json_encode("Data could not be deleted");
}