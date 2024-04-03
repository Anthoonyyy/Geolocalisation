//On prend les positions approximatives du CF2M (à vérifier en fonction de la précision)

let latitudeCF2m = 50.825540;
let longitudeCF2m = 4.338905;
let zoomcarte = 14; //Zoom de la carte de 1 à 20

//On utilise un objet de type L.map de la bibliothèque leaflet qui permet de définir une carte

//Centrage de la carte sur la position que la géolocalisation à donnée
//Mais tant qu'il n'y a pas de recherche, la position est indéfini.
//Donc il faut donner une valeur initiales aux variables
latitudeCentreCarte = latitudeCF2m;
longitudeCentreCarte = longitudeCF2m;
precisionCarte =0;
let carte = L.map('carte').setView([latitudeCentreCarte, longitudeCentreCarte], zoomcarte);

//Choix d'un fond de carte 
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(carteCF2m);

//Ajouter un marqueurs sur la carte
 let markerCf2m = L.marker([latitudeCentreCarte, longitudeCentreCarte]).addTo(carteCF2m);

 var circle = L.circle([latitudeCentreCarte, longitudeCentreCarte], {
    color: 'red',
    fillColor: '#f03',
    fillOpacity: 0.5,
    radius: precisionCarte=10
}).addTo(carteCF2m);



