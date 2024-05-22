<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Consulta de calificaciones</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/cssGenerales.css">  
  </head>



  <br>
  <body>
<!-- Primera etiqueta correspondiente al titulo -->
    <div class="container">
      <h1 class="text-center" style="background-color: blue; color: white">
      Tu consulta de calificaciones</h1>
    </div>
    <br>
    


  




    <!-- Contenedor con una tabla dentro de el -->
    <div class="container">
          <table class="table">
        <thead>
          <tr>
            <th scope="col">Materia</th>
            <th scope="col">Docente</th>
            <th scope="col">Calificación P1</th>
            <th scope="col">Calificación P2</th>
            <th scope="col">Calificación P3</th>
            <th scope="col">Asistencia P1</th>
            <th scope="col">Asistencia P2</th>
            <th scope="col">Asistencia P3</th>
          </tr>
        </thead>
        <tbody>



        <?php
                require('config.php');

                
                  $sql = $con -> query("SELECT * FROM calificaciones 
                    INNER JOIN alumnos ON calificaciones.id_alumno = alumnos.id_alumno
                    INNER JOIN asignatura ON calificaciones.id_asignatura = asignatura.id_asignatura
                    INNER JOIN docentes ON calificaciones.id_docente = docentes.id_docente
                  ");
                  $i = 1;
                  while ($resultado = $sql-> fetch_assoc()){
                  ?>
                  <tr>
                  <td><?php echo $resultado['nombre_asignatura']; ?></td>
                  <td><?php echo $resultado['nombre_docente']; ?></td>
                  <td><?php echo $resultado['calificacion_parcial1']; ?></td>
                  <td><?php echo $resultado['calificacion_parcial2']; ?></td>
                  <td><?php echo $resultado['calificacion_parcial3']; ?></td>
                  <td><?php echo $resultado['asistencia_parcial1']; ?></td>
                  <td><?php echo $resultado['asistencia_parcial2']; ?></td>
                  <td><?php echo $resultado['asistencia_parcial3']; ?></td>
                </tr>

              <?php
                }
                ?>



    </body>