<?php
require('config.php');
$tipo       = $_FILES['dataCliente']['type'];
$tamanio    = $_FILES['dataCliente']['size'];
$archivotmp = $_FILES['dataCliente']['tmp_name'];
$lineas     = file($archivotmp);

$i = 0;

foreach ($lineas as $linea) {
    $cantidad_registros = count($lineas);
    $cantidad_regist_agregados =  ($cantidad_registros - 1);

    if ($i != 0) {

        $datos = explode(",", $linea);
       
        $calificacion_parcial1                 = !empty($datos[0])  ? ($datos[0]) : '';
		$calificacion_parcial2                = !empty($datos[1])  ? ($datos[1]) : '';
        $calificacion_parcial3               = !empty($datos[2])  ? ($datos[2]) : '';
        $calificacion_final               = !empty($datos[3])  ? ($datos[3]) : '';
        $asistencia_parcial1               = !empty($datos[4])  ? ($datos[4]) : '';
        $asistencia_parcial2               = !empty($datos[5])  ? ($datos[5]) : '';
        $asistencia_parcial3               = !empty($datos[6])  ? ($datos[6]) : '';
        $asistencia_total               = !empty($datos[7])  ? ($datos[7]) : '';
        $acreditacion              = !empty($datos[8])  ? ($datos[8]) : '';
        $id_docente               = !empty($datos[9])  ? ($datos[9]) : '';
        $id_alumno               = !empty($datos[10])  ? ($datos[10]) : '';
        $id_asignatura               = !empty($datos[11])  ? ($datos[11]) : '';
        $id_especialidad               = !empty($datos[12])  ? ($datos[12]) : '';

    $insertar = "INSERT INTO calificaciones( 
            calificacion_parcial1,
			calificacion_parcial2,
            calificacion_parcial3,
            calificacion_final,
            asistencia_parcial1,
            asistencia_parcial2,
            asistencia_parcial3,
            asistencia_total,
            acreditacion,
            id_docente,
            id_alumno,
            id_asignatura,
            id_especialidad
        ) VALUES(
            '$calificacion_parcial1',
			'$calificacion_parcial2',
            '$calificacion_parcial3',
            '$calificacion_final',
            '$asistencia_parcial1',
            '$asistencia_parcial2',
            '$asistencia_parcial3',
            '$asistencia_total',
            '$acreditacion',
            '$id_docente',
            '$id_alumno',
            '$id_asignatura',
            '$id_especialidad'
        )";
        mysqli_query($con, $insertar);
    }

      echo '<div>'. $i. "). " .$linea.'</div>';
    $i++;
}


  echo '<p style="text-aling:center; color:#333;">Total de Registros: '. $cantidad_regist_agregados .'</p>';

?>

<a href="subir_calificaciones.php">Atras</a>