<?php
require_once "./app/controllers/siniestro.controller.php";


// base_url para redirecciones y base tag
define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
//no empty es para preguntar y ver que NO LLEGUE VACIA; si tiene algun dato ingresa y lo guarda en action, sino action es igual a vacio.
if(!empty($_GET["action"])){
    $action = $_GET["action"];
}else {
    $action ="home";
}
$params = explode("/", $action); // params se convierte en un arreglo separado por la barra.

// con el indice recorro los parametros dentro de params
switch($params[0]){
    case "home":
        $controller = new SiniestroController();
        $controller-> getHome();
        break;
    case "siniestros":
        $controller = new SiniestroController();
        $controller -> siniestros();
        break;
    case "siniestro":
        if(isset($params[1])){
            showSiniestroId($params[1]);
        }else {
            showSiniestros();
        }
        break;
    case "aseguradoras":
        $controller = new SiniestroController();
        $controller -> aseguradoras();
        break;
    case "aseguradora":
        if(isset($params[1])){
            showAseguradoraId($params[1]);
        }else{
            showAseguradoras();
        }
        break;
    default:
        echo "No se encuentra lo ingresado";
}
