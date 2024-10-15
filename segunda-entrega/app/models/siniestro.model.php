<?php

class SiniestroModel{
    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=peritajes;charset=utf8', 'root', '');
     }

    public function getSiniestros(){
        $query = $this -> db->prepare('SELECT * FROM siniestro');
        $query->execute();
        $siniestros = $query -> fetchAll(PDO::FETCH_OBJ);
        return $siniestros;
    }

    public function getAseguradoras(){
        $query = $this -> db->prepare('SELECT * FROM aseguradora');
        $query->execute();
        $aseguradoras = $query -> fetchAll(PDO::FETCH_OBJ);
        return $aseguradoras;
    }
 
}