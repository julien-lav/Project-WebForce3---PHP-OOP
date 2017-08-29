<?php
    require "Controller.php"
    class ShopController extends Controller{
        public function __construct(){
            parent::__construct();
        }



        public function single($id)
        {
            $itemHome = $this->itemsModel->listenerItem($id);
            if(sizeof($itemsHome) != 1)
            {
                header("Location: " . HOST . FOLDER . "404");
            }
            else
            {
                $itemsHome = $this->itemsModel->listenerItem($id);
                require("shop-single.php");
                echo "<script>let iditem=". $itemHome[0]['iditems'].";let typePage = 1;</script>";
            }
        }

   }