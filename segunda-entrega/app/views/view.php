<link rel='stylesheet' href='./style/style.css'>

<?php
class View {

    public function showHome(){
        echo "<div class='boton'>
                <button id='siniestros'>Siniestros</button>
                <button id='aseguradoras'>Aseguradoras</button>
              </div>";
              
    }
    
    public function showSiniestros($siniestros){

        echo "<ul class='list'>
            <li class='list-liA' id='1'>Siniestro 1</li>
            <li class='list-liA'id='2'>Siniestro 2</li>
            <li class='list-liA'id='3'>Siniestro 3</li>
        </ul>
        <div class = btn-back>
         <button id='back'>Atrás</button>
        </div>";
        var_dump($siniestros);

    
    }

    public function showAseguradoras($aseguradoras){
        echo "<ul class='list'>
                <li class='list-liA' id='1'>Aseguradora 1</li>
                <li class='list-liA'id='2'>Aseguradora 2</li>
                <li class='list-liA'id='3'>Aseguradora 3</li>
             </ul>
             <div class = btn-back>
                <button id='back'>Atrás</button>
            </div>";
            var_dump($aseguradoras);

    }
    
}

?>
<script src="./js/home.js"></script>