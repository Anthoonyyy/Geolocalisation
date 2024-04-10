// Définition du centre de la carte et du zoom (valeur initiale)

const map = L.map('map').setView([51.505, -0.09], 16);

// Ajout 'un fond de carte (arrière-plan)
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

// Ajout d'une liste de points à placer sur la carte

const liste = {
    "Studio Abbey Road": {"lat":51.531988,"lng":-0.178226},
    "Palais de Buckingham":{"lat":51.500835,"lng":-0.143004},
    "Trafalgar Square":{"lat":51.508037,"lng":-0.128049},
    "British Museum":{"lat":51.519294,"lng":-0.128018}
};

// Création d'un clusterGroup

const markers = L.markerClusterGroup();

// Création d'un tableau de marqueurs pour un affichage optimal avec featureGroup
const markerTable = [];

// Boucle pour créer les marqueurs de la liste 

for(let item in liste){
    // Crée un marqueur pour chaque élément de la liste
    let unMarqueur = L.marker([liste[item].lat, liste[item].lng]).addTo(map);

    // Ajout du nom de l'item dans un popup
    unMarqueur.bindPopup(item);

    // Ajout du marqueur au groupe

    markers.addLayer(unMarqueur);

    // Ajouter ce marqueur au tableau
    markerTable.push(unMarqueur);
}

// Ajout du groupe à la carte
map.addLayer(markers);

// Placement du tableau de marqueurs dans le featureGroup
const groupe = new L.featureGroup(markerTable);

// Adapter l'affichage de la carte en fonction de la position des marqueurs 

map.fitBounds(groupe.getBounds());