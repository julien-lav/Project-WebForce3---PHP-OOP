<?php
 require "Controller.php"
    class ApiController extends Controller{
        public function __construct(){
            parent::__construct();
        }
    
        public function detailItem($id)
        {
            require "php/Model/ItemsModel.php";
            $pictureItem = $this->itemsModel->listenerPictureItem($id);
            $reviewItem = $this->itemsModel->listenerReviewItem($id);
            echo json_encode(array("pictures"=> $picturesItem, "reviews"=> $reviewsItem );
        }
    }