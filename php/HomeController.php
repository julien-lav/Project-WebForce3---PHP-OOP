<?php
    class HomeController{

        public function home(){
            require "ItemsModel.php"; // Charger le fichier php
            $dbItem = new ItemsModel();
            $itemsHome = $dbItem->listenerItems();
            include("home.php");
        }
    }