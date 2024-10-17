
<link rel="stylesheet" href="./style/style.css">

<?php
class AseguradoraView {

    
    public function showAseguradoras($aseguradoras){

        echo "<h1>Aseguradoras</h1>
        <div class='accordion'>";
        
        // Recorrer el array utilizando tanto la key como el objeto siniestro

        foreach ($aseguradoras as $key => $aseguradora) {
            echo "
                <button class='accordion-btn' id='accordion-btn-$key'>
                    Aseguradora: $aseguradora->Nombre
                </button>
                <div class='accordion-content' id='accordion-content-$key'>
                    <p>ID aseguradora: $aseguradora->ID_Aseguradora</p>
                </div>";
        }       
         echo "<div class = btn-back>
        <button id='back'>Atrás</button>
        </div>";

    }

   
}

?>

<script src="./js/home.js"></script>
