<?php
		
	class controller{ 
		protected $categories;
		protected $itemsModel;

	public function __construct(){
			require 'php/Model/ItemsModel.php';
			$this->itemsModel = new ItemsModel();
			$this->categories = $this->itemsModel->listenerCategirie();

			}  
		}

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
	}
?>