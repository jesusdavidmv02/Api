<?php

    require('base.php');

    $db = new base();
    $con =  $db->conectar();

    $data = $_POST['data'];
    $nombre = $data[0];
    $apellido = $data[1];
    $city = $data[2];
    $correo = $data[3];
    $telefono = $data[4];

    $query = $con->prepare("INSERT INTO estudiante (Nombre, Apellido, City, Correo, Telefono)
    VALUES(:Nombre, :Apellido, :City, :Correo, :Telefono);");

    $params  =['Nombre' => $nombre , 'Apellido' => $apellido, 
    'City' => $city,'Correo' =>  $correo , 'Telefono'=> $telefono]; 

    $resultado = $query->execute($params);

    if($resultado){
        echo " datos fueron envidado";
        $db->cerrar();
    }else{
        echo "error";
        $db->cerrar();
    }
