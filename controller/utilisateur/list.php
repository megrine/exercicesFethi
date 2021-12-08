<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json; charset=UTF-8");
include_once '../../model/connection.php';
include_once '../../model/utilisateur.php';

$database = new Connection();
$db = $database->getConnection();

$item=new Utilisateur($db);
$stmt = $item->getAllUtilisateur();
$itemCount = $stmt->rowCount();


if ($itemCount > 0) {
    $userArr = array();
    $userArr["body"] = array();
    $userArr["itemCount"] = $itemCount;

    while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
        extract($row);
        $e = array(
            "id_utilisateur" => $id_utilisateur,
            "nom" => $nom,
            "prenom" => $prenom,
            "email" => $email,
            "telephone" => $telephone
        );
        $userArr["body"][] = $e;
    }
    http_response_code(200);
    echo json_encode($userArr);
} else {
    http_response_code(404);
    echo json_encode(
        array("message" => "No users found.")
    );
}