
function NuevosDatos() {

  var requestOptions = {
    method: 'GET',
    redirect: 'follow'
  };

  fetch("https://randomuser.me/api/", requestOptions)
    .then(response => response.text())
    .then(result => datos(result))
    .catch(error => console.log('error', error));



}

var arry = [];

function datos(data) {

  $("#datos").text(data);
  var datoJson = JSON.parse(data);

  nombre = datoJson['results'][0]['name']['first'];
  last = datoJson['results'][0]['name']['last'];
  city = datoJson['results'][0]['location']['city'];
  email = datoJson['results'][0]['email'];
  telefono = datoJson['results'][0]['phone'];

  $("#name").html(nombre);
  $("#last").html(last);
  $("#city").html(city);
  $("#email").html(email);
  $("#telefono").html(telefono);

  arry = [nombre, last, city, email, telefono]

}

function add() {

  var datos = {
    data: arry
  };

  $.ajax({
    type: "POST",
    url: "guardar.php", // La URL del archivo PHP en el servidor
    data: datos,
    success: function (response) {
      console.log(response);

      location.reload();

    },
    error: function () {
      alert("Error al realizar la solicitud AJAX");
    }
  });

}


$(document).ready(function () {
  $.ajax({
    type: "GET", // Método de solicitud (GET o POST)
    url: "consulta.php", // Ruta al archivo PHP
    // dataType: "json", // Tipo de datos esperados en la respuesta
    success: function (data) {
      console.log(data);
      //Procesa los datos recibidos y muestra en la página
      $('#resultado').html(data);

      tabla(data);
    },
    error: function () {
      alert("Error al cargar los datos.");
    }
  });
});


function tabla(datos) {

  // console.log("las posiciones   :" + datos);

  var data = JSON.parse(datos);

  // Recorre cada posición en el JSON
  for (var i = 0; i < data.length; i++) {
   
    var posicion = data[i];

    // Accede a las propiedades de la posición
    var id = posicion.Id;
    var nombre = posicion.Nombre;
    var apellido = posicion.Apellido;
    var ciudad = posicion.City;
    var correo = posicion.Correo;
    var telefono = posicion.Telefono;

    // Haz lo que necesites con los datos, por ejemplo, imprimirlos en la consola

    var nuevaFila = $("<tr>");
    nuevaFila.append("<td>" + id + "</td>");
    nuevaFila.append("<td>" + nombre + "</td>");
    nuevaFila.append("<td>" + apellido + "</td>");
    nuevaFila.append("<td>" + ciudad + "</td>");
    nuevaFila.append("<td>" + correo + "</td>");
    nuevaFila.append("<td>" + telefono + "</td>");


    $("#miTabla tbody").append(nuevaFila);

  }

}




// console.log("ID: " + id);
// console.log("Nombre: " + nombre);
// console.log("Apellido: " + apellido);
// console.log("Ciudad: " + ciudad);
// console.log("Correo: " + correo);
// console.log("Teléfono: " + telefono);







