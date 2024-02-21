<?php

 require('base.php');
 $db = new base();
    $con =  $db->conectar();


 
 $query = $con->prepare('SELECT * FROM estudiante');
 $resultado = $query->execute();
 $datos = $query->fetchAll(PDO::FETCH_ASSOC);




// Devolver los datos en formato JSON
echo json_encode($datos);
