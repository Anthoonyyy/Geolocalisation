// Définition du centre de la carte et du zoom (valeur initiale)

const map = L.map('map').setView([51.505, -0.09], 13);

// Ajout 'un fond de carte (arrière-plan)
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

//Ajout d'un marqueur de base 

const marker = L.marker([51.5, 0]).addTo(map);

// Ajout d'un pop-up

const monPopup = "<h3>Je suis ici !</h3><p class='rouge'>Au centre de <a target='_blank' href='https://fr.wikipedia.org/wiki/Londres'>Londres</a></p>";

marker.bindPopup(monPopup);

//marqueurs personnalisé

const monIcone = L.icon({
    iconUrl: 'img/orange_map_marker.svg', // icône
    iconSize: [64, 64], // taille de l’icône
    iconAnchor: [32, 64], // point de l’icône qui correspond à l’emplacement du marqueur
    popupAnchor: [0,-62]
});

const marker2 = L.marker([51.5, -0.1],{icon:monIcone}).addTo(map);

marker2.bindPopup("Je suis l'icône orange")
    
