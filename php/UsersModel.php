<?php 
	require "Model.php"; // Charger le fichier php
	class UsersModel extends Model{

		function __construct() {
			parent::__construct();
		}


		
		/*************************Insert*******************************/
	
		public function addUser($user = array()){
			if(!isset($user['firstname'])){
				return 0;
			}
			elseif(!isset($user['lastname'])){
				return 0;
			}
			elseif(!isset($user['email'])){
				return 0;
			}
			elseif(!isset($user['password'])){
				return 0;
			}
			
			return $this->insert( $user, "clients" );
		}

		
		public function addFavorie($userId, $itemId){
			if(!is_int($userId)){
				return 0;
			}
			elseif(!is_int($itemId)){
				return 0;
			}
			$idFavorie = $this->insert( array("clients_idclients"=>$userId, "items_iditems"=>$itemId), "clients_has_items" );
		}
		
		public function addDelivery($userId, $delivery){
			if(!is_int($userId)){
				return 0;
			}
			if(!isset($delivery['street'])){
				return 0;
			}
			elseif(!isset($delivery['city'])){
				return 0;
			}
			elseif(!isset($delivery['country'])){
				return 0;
			}
			$delivery["clients_idclients"] = $userId;
			$idDelivery = $this->insert( $delivery, "delivery" );
		}
		
		public function addOrder($userId, $deliveryId){
			if(!is_int($userId)){
				return 0;
			}
			elseif(!is_int($deliveryId)){
				return 0;
			}
			$order = array('num_order'=> $this->randomByAlphNum());
			$order["clients_idclients"] = $userId;
			$order["delivery_iddelivery"] = $deliveryId;
			$idOrder = $this->insert( $order, "orders" );
		}



		/*************************SELECT*******************************/
		
		public function listenerClientsByEmail($email){
			$user = $this->select("*", "clients", array("email"=> $email));
			return $user;
		}
		
		public function listenerFavorie($userId){
			if(!is_int($userId)){
				return 0;
			}
			$myFavorie = $this->select("*", "listenerfavorie", array("idclients"=> $userId));
			var_dump($myFavorie);
		}
		
		public function listenerDelivery($userId, $type = null){
			if(!is_int($userId)){
				return 0;
			}
			if($type == null)
				$myDelivery = $this->select("*", "delivery", array("clients_idclients"=> $userId));
			else
				$myDelivery = $this->select("*", "delivery", array("clients_idclients"=> $userId, "type"=> $type));

			var_dump($myDelivery);
		}
		
		public function listenerOrder($userId, $dateOrder = null){
			if(!is_int($userId)){
				return 0;
			}
			if($dateOrder == null)
				$myOrders = $this->select("*", "orders", array("clients_idclients"=> $userId));
			else
				$myOrders = $this->select("*", "orders", array("clients_idclients"=> $userId, "date_order"=> $dateOrder));

			var_dump($myOrders);
		}
	}

	// $test = new UsersModel();
	// $test->addOrder(1,1);
	
	/**
		-- Phase de test --
	$test->addUser(array("firstname" => "Mike", 'lastname' => "Sylvestre", 'email' => "Mike@Mike.Mike", 'password' => "Mike"));
	$test->addFavorie(1,2);
	$test->listenerFavorie(1);
	$test->listenerDelivery(1, "Livraisons" );
		-- End test --
	**/