<?php

class conexion{

  private $host = "localhost";    //Servidor
  private $port = "3306";         //Puerto comunicación BD
  private $database = "productos_ferreteria";   //Nombre BD
  private $charset = "UTF8";      //Codificación (idioma)
  private $user = "root";         //Usuario (raíz)
  private $password = "";         //contraseña

    
    private $producto;

    
    private function conectarServidor(){
      
      $conexion = new PRODUCTO("mysql:host={$this->host};port={$this->port};dbname={$this->database};charset={$this->charset}", 
                                       $this->user, $this->password);
  
      return $conexion;
    }
  
    
    public function getConexion(){
      try{
        
        $this->producto = $this->conectarServidor();
        
        
        $this->producto->setAttribute(PRODUCTO::ATTR_ERRMODE, PRODUCTO::ERRMODE_EXCEPTION);
  
       
        return $this->producto;
      }
      catch(Exception $e){
        die($e->getMessage());
      }
    }


}

