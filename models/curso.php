<?php
  require_once "conexion.php";

  class Curso extends conexion{
  
    private $accesoBD;
  
    public function __CONSTRUCT(){
      $this->accesoBD = parent::getConexion();
    }
  
    public function listarProducto(){
      try{
        $consulta = $this->accesoBD->prepare("CALL spu_producto_listar()");

        $consulta->execute();

        return $consulta->fetchAll(PRODUCTO::FETCH_ASSOC);
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }
  
    public function registrarProducto($datos = []){
      try{

        $consulta = $this->accesoBD->prepare("CALL spu_producto_registrar(?,?,?,?,?,?,?)");

        $consulta->execute(
          array(
            $datos["nombre"],
            $datos["descripcion"],
            $datos["precio"],
            $datos["stock"],
            $datos["marca"],
            $datos["proveedor"],
            $datos["categoria"]
          )
        );
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }  
    
  
    public function eliminarProducto($idproducto = 0){
      try{
  
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }
  
    public function actualizarProducto(){
      try{
  
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }
  
  }


?>