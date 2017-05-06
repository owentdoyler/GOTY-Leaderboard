<?php
	//class which hold all the players information 
	class Player{
		public $name = "";
		public $scores;
		public $overallScore = 0;
		
		public function setScores($scoresList){
			$this->scores = $scoresList;
		}
	}
?>