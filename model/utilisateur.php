<?php

class  Utilisateur{

    private $conn;
    private $db_table = "utilisateur";
    public $id_utilisateur;
    public $nom;
    public $prenom;
    public $email;
    public $telephone;
    public $listLivres;

    public function __construct($db){
        $this->conn = $db;
    }

    public function getAllUtilisateur(){
        $query = "SELECT * FROM " . $this->db_table . " ORDER BY id_utilisateur ASC";
        $stmt = $this->conn->prepare($query);
        $stmt->execute();
        return $stmt;
    }

    public function createUtilisateur(){
        $query = "INSERT INTO " . $this->db_table ."
         SET nom = :nom, prenom = :prenom, email = :email, telephone = :telephone";
        $stmt = $this->conn->prepare($query);
        $this->nom=htmlspecialchars(strip_tags($this->nom));
        $this->prenom=htmlspecialchars(strip_tags($this->prenom));
        $this->email=htmlspecialchars(strip_tags($this->email));
        $this->telephone=htmlspecialchars(strip_tags($this->telephone));
        $stmt->bindParam(":nom", $this->nom);
        $stmt->bindParam(":prenom", $this->prenom);
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":telephone", $this->telephone);
        if($stmt->execute()){
            return true;
        }
        return false;
    }
    public function updateUtilisateur(){
        $query = "UPDATE" . $this->db_table . "
                SET nom = :nom, prenom = :prenom, email = :email, telephone= :telephone
                WHERE
                    id_utilisateur = :id_utilisateur";
        $stmt = $this->conn->prepare($query);
        $this->nom=htmlspecialchars(strip_tags($this->nom));
        $this->prenom=htmlspecialchars(strip_tags($this->prenom));
        $this->email=htmlspecialchars(strip_tags($this->email));
        $this->telephone=htmlspecialchars($this->telephone);
        $this->id_utilisateur=htmlspecialchars(strip_tags($this->id_utilisateur));
        $stmt->bindParam(":nom", $this->nom);
        $stmt->bindParam(":prenom", $this->prenom);
        $stmt->bindParam(":email", $this->email);
        $stmt->bindParam(":telephone", $this->telephone);
        $stmt->bindParam(":id_utilisateur", $this->id_utilisateur);
        if($stmt->execute()){
           return true;
        }
        return false;
    }
    public function deleteUtilisateur(){
        $query = "DELETE FROM " . $this->db_table . " WHERE id_utilisateur = ?";
        $stmt = $this->conn->prepare($query);
        $this->id_utilisateur=htmlspecialchars(strip_tags($this->id_utilisateur));
        $stmt->bindParam(1, $this->id_utilisateur);
        if($stmt->execute()){
            return true;
        }

        return false;
    }
    public function getUtilisateurById(){
        $query = "SELECT * FROM " . $this->db_table . " WHERE id_utilisateur = ?";
        $stmt = $this->conn->prepare($query);
        $this->id_utilisateur=htmlspecialchars(strip_tags($this->id_utilisateur));
        $stmt->bindParam(1, $this->id_utilisateur);
        $stmt->execute();
        $row = $stmt->fetch(PDO::FETCH_ASSOC);
        $this->nom = $row['nom'];
        $this->prenom = $row['prenom'];
        $this->email = $row['email'];
        $this->telephone = $row['telephone'];
    }

}