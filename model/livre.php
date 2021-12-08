<?php

class Livre{
    private $conn;
    private $db_table = "livre";
    private $id_livre;
    private $titre;
    private $auteur;
    private $date_parution;
    private $stock;
    private $disponible;

    public function __construct($db){
        $this->conn = $db;
    }

    public function getAllLivre(){
        $query="SELECT * FROM" . $this->db_table;
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
    }

    public function createLivre(){
        $query="INSERT INTO".this->db_table.
            "SET titre=:titre, auteur=:auteur, date_parution=:date_parution, stock=:stock,disponible=:disponible";
        $stmt =$this->conn->prepare($query);
        $this->titre=htmlspecialchars(strip_tags($this->titre));
        $this->auteur=htmlspecialchars(strip_tags($this->auteur));
        $this->date_parution=htmlspecialchars(strip_tags($this->date_parution));
        $this->stock=htmlspecialchars(strip_tags($this->stock));
        $this->disponible=true;
    }
    public function updateLivre() {
        $query="UPDATE".$this->db->db_table.
            "SET titre=:titre, auteur=:auteur,stock=:stock, date_parution=:date_parution, disponible=:disponible
            WHERE id_livre=:id_livre";
    $stmt = $this->conn->prepare($query);
        $this->titre=htmlspecialchars(strip_tags($this->titre));
        $this->auteur=htmlspecialchars(strip_tags($this->auteur));
        $this->stock=htmlspecialchars(strip_tags($this->stock));
        $this->date_parution=htmlspecialchars($this->date_parution);
        $this->disponible=htmlspecialchars($this->disponible);
        $this->id_livre=htmlspecialchars(strip_tags($this->id_livre));
        $stmt->bindParam(":titre", $this->titre);
        $stmt->bindParam(":auteur", $this->auteur);
        $stmt->bindParam(":stock", $this->stock);
        $stmt->bindParam(":date_parution", $this->date_parution);
        $stmt->bindParam(":disponible", $this->disponible);
        $stmt->bindParam(":id_livre", $this->id_livre);
        if($stmt->execute()){
            return true;
        }
        return false;
    }

    public function deleteLivre(){
        $query = "DELETE FROM " . $this->db_table . " WHERE id_livre = ?";
        $stmt = $this->conn->prepare($query);
        $this->id_livre=htmlspecialchars(strip_tags($this->id_livre));
        $stmt->bindParam(1, $this->id_livre);
        if($stmt->execute()){
            return true;
        }

        return false;
    }
    public function getLivreById(){
        $query = "SELECT * FROM " . $this->db_table . " WHERE id_livre = ?";
        $stmt = $this->conn->prepare($query);
        $this->id_livre=htmlspecialchars(strip_tags($this->id_livre));
        $stmt->bindParam(1, $this->id_livre);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $this->titre = $row["titre"];
        $this->auteur = $row['auteur'];
        $this->stock = $row['stock'];
        $this->date_parution = $row['date_parution'];
        $this->disponible = $row['disponible'];
        $this->id_livre = $row['id_livre'];
    }

}