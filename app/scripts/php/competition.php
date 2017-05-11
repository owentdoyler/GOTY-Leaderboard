<?php
	//class which hold all the Competition's information 
	class Competition{
		public $compNum = 0;
		public $compName =0
		public $date = "";
		public $results;

		public function setResults($resultsList){
			$this->results = $resultsList;
		}
	}
?>