window.onload = function() {
    console.log("Hello World");
}function initMap(){
    navigator.geolocation.getCurrentPosition(success, error);
}

function success(pos) {
    var crd = pos.coords;
    latitud = crd.latitude
    longitud = crd.longitude   
    document.getElementById("latitud").innerHTML = latitud 
    document.getElementById("longitud").innerHTML = longitud 
    map = new google.maps.Map(document.getElementById("map"), {
        center: {lat: latitud, lng: longitud},
        zoom: 14
    });
};