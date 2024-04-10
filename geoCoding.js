// Définition du centre de la carte et du zoom (valeur initiale)

const map = L.map('map').setView([51.505, -0.09], 16);

// Ajout 'un fond de carte (arrière-plan)
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);


const search = new GeoSearch.GeoSearchControl({
    provider: new GeoSearch.OpenStreetMapProvider(),
    style:"bar",
  });
  
  map.addControl(search);