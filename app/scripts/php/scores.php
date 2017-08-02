<?php
	require("connect.php");
	require("player.php");
	require("score_utils.php");
	
	$players_query = "SELECT playerName FROM scores GROUP BY playerName";
	$players_query_response = @mysqli_query($database, $players_query);
	
	
	$players = array();
	
	if($players_query_response){
		while($row = mysqli_fetch_array($players_query_response)){
			array_push($players, $row['playerName']);
		}
	}
	
	$players1 = array();
	$players2 = array();
	$players3 = array();
	$players4 = array();
	$playersList = array();
	
	foreach ($players as $playerName){
		$query = getScoresByPlayerQuery($playerName);
		$response = @mysqli_query($database, $query);
		$scoreList = group_scores($response);
		//sort scores array so that the top five scores are first 
		usort($scoreList, function($a, $b){
			if($a->gotyScore < $b->gotyScore) return -1;
			elseif ($a->gotyScore > $b->gotyScore) return 1;
			else return 0;
		});
		
		//calculate the players over all score selecting the best
		//5 when the number of scores a player has is greater than 5
		$overallScore = 0;
		if(count($scoreList) > 5){
			$tmp = array_slice($scoreList, 0, 5);
			$overallScore = calculateScore($tmp);
		}
		else{
			$overallScore = calculateScore($scoreList);
		}
		
		//set up player object and add to list
		$player = new Player();
		$player->name = $playerName;
		$player->setScores($scoreList);
		$player->overallScore = $overallScore;
		
		$count = count($scoreList);
		
		switch ($count) {
			case 1:
				array_push($players1, $player);
				break;
			case 2:
				array_push($players2, $player);
				break;
			case 3:
				array_push($players3, $player);
				break;
			case 4:
				array_push($players4, $player);
				break;	
			default:
				array_push($playersList, $player);
		}
		
		
	}
	
	usort($players1, function($a, $b){
		if($a->overallScore < $b->overallScore) return -1;
		elseif ($a->overallScore > $b->overallScore) return 1;
		else return 0;
	});
	
	usort($players2, function($a, $b){
		if($a->overallScore < $b->overallScore) return -1;
		elseif ($a->overallScore > $b->overallScore) return 1;
		else return 0;
	});

	usort($players3, function($a, $b){
		if($a->overallScore < $b->overallScore) return -1;
		elseif ($a->overallScore > $b->overallScore) return 1;
		else return 0;
	});

	usort($players4, function($a, $b){
		if($a->overallScore < $b->overallScore) return -1;
		elseif ($a->overallScore > $b->overallScore) return 1;
		else return 0;
	});

	usort($playersList, function($a, $b){
		if($a->overallScore < $b->overallScore) return -1;
		elseif ($a->overallScore > $b->overallScore) return 1;
		else return 0;
	});
	
	$playersList = array_merge($playersList, $players4);
	$playersList = array_merge($playersList, $players3);
	$playersList = array_merge($playersList, $players2);
	$playersList = array_merge($playersList, $players1);
	
	
	
	$playersJson = array();
	$firstElement = '"name"';
	$secondElement = '"score"';
	$thirdElement = '"weeks"';
	$firstSubElement = '"weekNumber"';
	$secondSubElement = '"score"';

	foreach($playersList as $player){
		$playerJson = '{' . $firstElement. ':"' . $player->name . '",';
		$playerJson .= $secondElement . ':"' . $player->overallScore . '",';
		$playerJson .= $thirdElement . ':[';
			foreach($player->scores as $score){
				$playerJson .= '{' . $firstSubElement .':"' . $score->competitionName . '",';
				$playerJson .=  $secondSubElement .':"' . $score->gotyScore . '"},';
			}
		$playerJson = substr($playerJson, 0, -1);
		$playerJson .= ']}';
		array_push($playersJson, $playerJson);
	}
	$json = '[';
	foreach($playersJson as $playerJson){
		$json .= $playerJson . ',';
	}
	$json = substr($json, 0, -1);
	$json .= ']';

	echo $json;

	function calculateScore($scores){
		$total = 0;
		foreach($scores as $score){
			$total += $score->gotyScore;
		}
		return $total;
	}	
	
?>