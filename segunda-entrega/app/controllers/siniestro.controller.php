<?php
require_once "./app/models/siniestro.model.php";
require_once "./app/views/view.php";

class SiniestroController{
    private $model;
    private $view;

    public function __construct(){
        $this->model = new SiniestroModel();
        $this->view = new View();

    }

    public function getHome(){
        $this -> view -> showHome();
    }

    public function siniestros(){
        $siniestros = $this->model->getSiniestros();
        return $this -> view -> showSiniestros($siniestros);
    }

    public function aseguradoras(){
        $aseguradoras = $this->model->getAseguradoras();
        return $this -> view -> showAseguradoras($aseguradoras);
    }
     
}