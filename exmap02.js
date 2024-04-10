function afficherPosition(){
    trouverPosition(ma_carte, true, 16);
}

/* ==================== Géolocalisation ======================================================*/

function trouverPosition(carteName, afficher, zoom) {
    /* Pour centrer la carte en fonction de la position détectée */
    carteName.locate({setView: afficher, maxZoom: zoom, enableHighaccuracy: true});

    carteName.on('locationerror', onLocationError);
    carteName.on('locationfound', onLocationFound);
}

function onLocationFound(e) {
    const radius = Math.round(e.accuracy);
    const longitude = e.longitude;
    const latitude = e.latitude;

    L.marker(e.latlng).addTo(ma_carte)
        .bindPopup(`<h3>Votre position estimée</h3>
        <p>longitude: ${longitude}° - latitude: ${latitude}°</p>
        <p>Vous êtes situé dans un rayon de ${radius} mètres autour de ce point</p>`)
        .openPopup();

    L.circle(e.latlng, radius).addTo(ma_carte);
}

function onLocationError(e) {
    alert(e.message);
}

/* ===================================== Marqueurs =========================================== */

function marqueurCF2m(){
    return ajouterMarqueur(CF2m);
}

function ajouterMarqueur(position){
    return L.marker(position).addTo(ma_carte);
}

/* Position du CF2m */
const CF2m = L.latLng(50.8256748, 4.3384882);

/* Centrer la carte sur le CF2m */
/* Zoom = 19 -> Bâtiment */
/* Zoom = 17 -> Rue */
/* Zoom = 15 -> Commune */    
/* Zoom = 11/12 -> Région BXL */
/* Zoom = 7/8 -> Belgique */
/* NB: Avec zoomSnap, on n'est pas obligé d'avoir des valeurs entières. On définit le pas entre chaque valeur. */
const ma_carte = L.map('carte',{zoomSnap:0.25}).setView(CF2m, 15.5);

/* Mettre un fond de carte */
const fond = L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(ma_carte);




