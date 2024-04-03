//On prend les positions approximatives du CF2M (à vérifier en fonction de la précision)

let latitude = 50.825540;
let longitude = 4.338905;
let zoomcarte = 16; //Zoom de la carte de 1 à 20

//On utilise un objet de type L.map de la bibliothèque leaflet qui permet de définir une carte

let carteCF2m = L.map('carte').setView([latitude, longitude], zoomcarte);

//Choix d'un fond de carte 
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(carteCF2m);

//Ajouter un marqueurs sur la carte
 let markerCf2m = L.marker([latitude, longitude]).addTo(carteCF2m);

