<?php
require_once '../models/curso.php';

if (isset($_POST['operacion'])){

  $producto = new producto();

  if ($_POST['operacion'] == 'listar'){
    $datosObtenidos = $producto->listarProducto();
    
    //En esta ocasión NO enviaremos un objeto JSON, en su lugar
    //el controlador renderizará las filas que necesita <tbody></tbody>
    //echo json_encode($datosObtenidos);

    //Paso 1: Verificar que el objeto contega datos
    if ($datosObtenidos){
      $numeroFila = 1;
      //PASO 2: Recorrer todo el objeto
      foreach($datosObtenidos as $producto){
        //PASO 3: Ahora construimos las filas
        echo"
          <tr>
            <td>{$numeroFila}</td>
            <td>{$producto['nombre']}</td>
            <td>{$producto['descripcion']}</td>
            <td>{$producto['precio']}</td>
            <td>{$producto['marca']}</td>
            <td>{$producto['stock']}</td>
            <td>{$producto['proveedor']}</td>
            <td>{$producto['categoria']}</td>
            <td>
              <a href='#' data-idproducto='{$producto['idproducto']}' class='btn btn-danger btn-sm borrar  '><i class='bi bi-trash3'></i></a>
              <a href='#' data-idproducto='{$producto['idproducto']}' class='btn btn-info btn-sm editar'><i class='bi bi-pencil-fill'></i></a>
            </td>

          </tr>
        ";
        $numeroFila++;
      }
    }
  }

  if ($_POST['operacion'] == 'registrar'){
    //PASO 1: Recoger los datos que nos envia la vista (FORM, utilizando AJAX)
    $datosForm = [
      "nombre"        =>  $_POST['nombre'],
      "descripcion"   =>  $_POST['descripcion'],
      "precio"        =>  $_POST['precio'],
      "marca"         =>  $_POST['marca'],
      "stock"         =>  $_POST['stock'],
      "proveedor"     =>  $_POST['proveedor'],
      "categoria"     =>  $_POST['categoria']
    ];
    
    //PASO 2: Enviar el arreglo como parametro del metodo registrar
    $curso->registrarCurso($datosForm);
  }

  if ($_POST['operacion'] == 'borrar'){
    $producto->eliminarProducto($_POST['idproducto']); 
  }
}
