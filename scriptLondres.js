
let latitudeLondres = 51.5007042;
let longitudeLondres = -0.1245721;
let zoomcarte = 13;

let carteLondres = L.map('carteLondres').setView([latitudeLondres, longitudeLondres], zoomcarte);
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(carteLondres);