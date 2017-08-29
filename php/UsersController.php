<?php 
    require "Controller.php"; // Charger le fichier php
    
    class UsersController extends Controller{
        
        public function addUser(){
            require "php/UsersModel.php"; // Charger le fichier php
            $redirect = 0; // Define ma variable de redirection

            $error = $this->arrayIsEmpty($_POST, array("firstname","lastname","email","password"));
           
            if($error == -1)
                $redirect = -1;

            if($redirect != -1):

                $dbUser = new UsersModel();
                $user = $dbUser->listenerClientsByEmail($_POST['email']); // Email to database

                if(count($user) >= 1)
                    $redirect = -1;

                if($redirect != -1){
                    $_POST['password'] = password_hash($_POST['password'], PASSWORD_DEFAULT); // cryptage du mdp.
                    $idUser = $dbUser->addUser($_POST);
                }

            endif;
            
            if($redirect == -1)
                header("Location: http://localhost/Mike/php-object-webforce3/404");
            else{
                $_POST["idclients"] = $idUser; // Ajouter l'id dans notre array
                $this->clientAddSession($_POST); // Lancement de la method pour ajouter dans les session
                header("Location: http://localhost/Mike/php-object-webforce3/");
            }
        }


        /* ******************************************************************** */

        public function arrayIsEmpty($data = array(), $keyObligatory = array()){
            if(!is_array($data))
                return -1;
            
            $isOk = false;

            foreach($data as $key => $val){
                foreach($keyObligatory as $valO)
                    if($valO == $key)
                        $isOk = true;
                if(!$isOk || empty(trim($val))){
                    return -1;die();
                }
            }

            return 1;
        }
        
        public function clientAddSession($user = array()){

            if(!isset($user["idclients"]))
                return -1;
            
            unset($user["password"]);
            $_SESSION["user"] = $user;

        }

        public function logClientOut(){
            unset($_SESSION["user"]);
            header("Location: " . HOST. FOLDER);
        }

    }
