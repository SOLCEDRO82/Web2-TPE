document.addEventListener("DOMContentLoaded", function() {
    const siniestros = document.getElementById('siniestros'); 
    const aseguradoras = document.getElementById('aseguradoras');
    const btnBack = document.getElementById('back');

    // Comprobar si el botón 'siniestros' existe
    if (siniestros) {
        siniestros.addEventListener('click', function() {
            window.location.href = './ruteo.php?action=siniestros';
        });
    }

    // Comprobar si el botón 'aseguradoras' existe
    if (aseguradoras) {
        aseguradoras.addEventListener('click', function() {
            window.location.href = './ruteo.php?action=aseguradoras';
        });
    }

    // Comprobar si el botón 'back' existe
    if (btnBack) {
        btnBack.addEventListener('click', function() {
            window.location.href = './ruteo.php?action=home';
        });
    }
});
