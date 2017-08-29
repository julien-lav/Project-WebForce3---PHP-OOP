<?php

    session_start();
    require "php/config.php";


    function recoveryLastElemToUrl(){

    $statements = preg_split("(/)",$_SERVER["REQUEST_URI"]);
    // convert string to array
    $id = (sizeof($statements) > 4) ? $statements[4] : 0;
        unset($statements[4]);
        $_SERVER["REQUEST_URI"] = implode("/", $statements);

    // $valeur = preg_split("^{*}/[0-9]+$",$_SERVER["REQUEST_URI"]);
    // var_dump($valeur);die();
    }
    


    // $keywords = preg_split("\[0-9]{1,3}", "rgf3g g5erg 0");
    // print_r($statements);

    // Recuperation du chemin ( de l'url apres le nom de domaine)
    // echo $_SERVER["REQUEST_URI"];die(); // Mike/php-object-webforce3/
    
    // Verification des Method Utiliser
    // echo $_SERVER["REQUEST_METHOD"]; die(); // Retourne le type de la method utiliser
    if($_SERVER["REQUEST_METHOD"] == "POST"){ // Si la method est POST

        // Test l'existance de la route
        switch($_SERVER["REQUEST_URI"]){
            case FOLDER . "user-register": // Chargement de la Class et lancement de la methode
                require "php/Controller/UsersController.php"; // Charger le fichier php
                $usersController = new UsersController();
                $usersController->addUser();
            break;
            case FOLDER . "single": // Chargement de la Class et lancement de la methode
                require "php/Controller/ShopController.php"; // Charger le fichier php
                $apiController = new ApiController();
                $apiController->detailItem((int)$id);
            break;
            case FOLDER . "shop-list": // Chargement de la Class et lancement de la methode
                require "php/Controller/ShopController.php"; // Charger le fichier php
                $apiController = new ShopController();
                $apiController->shopListView();
            break;


            default: // Redirection vers la route 404
                header("Location: " . HOST . FOLDER . "404");
        }


    }
    

    elseif($_SERVER["REQUEST_METHOD"] == "GET"){
   
        switch($_SERVER["REQUEST_URI"]){
            case FOLDER:  
                require "php/Controller/HomeController.php";
                $home = new HomeController();
                $home->home();
            break;

            case FOLDER."logout":                       
                require "php/Controller/UsersController.php";
                $usersController = new UsersController();
                $usersController->logClientOut();
            break;
            
            case FOLDER."single":
                require "php/Controller/ShopController.php";
                Controller::show_44();
                     
        //  $shop = new ShopController();
        //  $shop->single($id);
          
            break;

            case FOLDER . "404":
                include("404.php");
            break;

            // default:
            //     header("Location: " . HOST . FOLDER . "404");
        }

    }