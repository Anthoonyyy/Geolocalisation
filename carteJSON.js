// Définition du centre de la carte et du zoom (valeur initiale)

const map = L.map('map').setView([50.8466,  4.3528], 16);

// Ajout 'un fond de carte (arrière-plan)
L.tileLayer('https://tile.openstreetmap.org/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
}).addTo(map);

// Récupération des données 
fetch("carteJSON.php")
    .then(function(response){
        response.json().then(function(data){
            console.log(data);
            afficheMarqueurs(data);
            afficheListe(data);
        });
    })
    .catch(function(error){
        console.log(error.message);
    });



// Création d'un tableau de marqueurs pour un affichage optimal avec featureGroup
const markerTable = [];

function afficheMarqueurs(liste){

// Boucle pour créer les marqueurs de la liste 

for(let item in liste){
    // Crée un marqueur pour chaque élément de la liste
    let unMarqueur = L.marker([liste[item].lat, liste[item].long]).addTo(map);

    // Ajout du nom de l'item dans un popup
    unMarqueur.bindPopup(`<h3>${ liste[item].name}</h3> <p>${ liste[item].adresse}</p> <img class='photo' src='${ liste[item].img_url}'>`);


    // Ajouter ce marqueur au tableau
    markerTable.push(unMarqueur);
}



// Placement du tableau de marqueurs dans le featureGroup
const groupe = new L.featureGroup(markerTable);

// Adapter l'affichage de la carte en fonction de la position des marqueurs 

map.fitBounds(groupe.getBounds());
}

function afficheListe(liste){
    const divliste = document.getElementById('liste');
    const ul = document.createElement("ul");

    liste.forEach(function(item,index){
        //Créer l'élément de type li
        let li = document.createElement("li");
        //remplir le li
        li.innerHTML = `${item.name} | ${item.adresse}`;
        //ajouter un eventlistener sur l'evenement clic
        li.addEventListener('click',itemClick);
        // ajouter un attribut à cet item li pour l'identifier
        li.setAttribute("id",`${item.id}`);
        // ajouter un attribut à cet item li pour stocker les coordonnées
        li.setAttribute("latitude",`${item.lat}`);
        li.setAttribute("longitude",`${item.long}`);

        //attacher ce li au ul
        ul.appendChild(li);
    });

    //attacher la liste ul au div 
    divliste.appendChild(ul);
 
}
 function itemClick(){
    let id = this.getAttribute("id");
    let latitude = this.getAttribute("latitude");
    let longitude = this.getAttribute("longitude");

    console.log('item cliqué : ' + id);
    let marqueur = markerTable[id-1];
    marqueur.togglePopup();
    map.flyTo([latitude,longitude],17);
 }