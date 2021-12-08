<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Methods: POST");
header("Access-Control-Max-Age: 3600");
header("Access-Control-Allow-Headers: Content-Type, Access-Control-Allow-Headers, Authorization, X-Requested-With");

include_once '../../model/connection.php';
include_once '../../model/utilisateur.php';

$database = new Connection();
$db = $database->getConnection();

$id_utilisateur = $_POST["id_utilisateur"];
$item=new Utilisateur($db);

$item->id_utilisateur = $id_utilisateur;
$item->nom = $_POST["nom"];
$item->prenom = $_POST["prenom"];
$item->email =$_POST["email"];
$item->telephone = $_POST["telephone"];


if($item->updateUtilisateur()){
    echo json_encode("Utilisateur data updated.");
} else{
    echo json_encode("Utilisateur data not updated.");
}