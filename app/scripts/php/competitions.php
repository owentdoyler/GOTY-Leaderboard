<?php
    require("connect.php");
	require("competition.php");
	require("score_utils.php");

    $competitions_query = "SELECT * FROM competitions GROUP BY compNum";
    $competitions_query_response = @mysqli_query($database, $competitions_query);

    $competitions = array();
	
	if($competitions_query_response){
		while($row = mysqli_fetch_array($competitions_query_response)){
			array_push($competitions, $row['compNum']);
		}
	}

	$competitionsList = array();

	foreach($competitions as $competitionNumber){
		$query = getScoresByCompetitionQuery($competitionNumber);
		$response = @mysqli_query($database, $query);
		$scoreList = group_points_scores($response);
		//sort scores array so that the top five scores are first

		usort($scoreList, function($a, $b){
			if($a->position < $b->position) return -1;
			elseif ($a->position > $b->position) return 1;
			else return 0;
		});
		$compDetailsQuery = "SELECT * FROM competitions WHERE compNum='" . $competitionNumber . "';";
		$compDetails_query_response = @mysqli_query($database, $compDetailsQuery);
		if($compDetails_query_response){
			$data = mysqli_fetch_array($compDetails_query_response);
			$comp = new Competition();
			$comp->compNum = $competitionNumber;
			$comp->compName = $data["compName"];
			if($data["compName"] == "March Medal (rescheduled)"){
				$comp->date = "TBC";	
			} else {
				$comp->date =  convertDate($data["compDate"], "d/m/y");
			} 
			$comp->setResults($scoreList);
			array_push($competitionsList, $comp);
		}
	}
	usort($competitionsList, function($a, $b){
		if($a->compNum < $b->compNum) return -1;
		elseif ($a->compNum > $b->compNum) return 1;
		else return 0;
	});

	$compsJson = array();
	$firstElement = '"compName"';
	$secondElement = '"compDate"';
	$thirdElement = '"compWinner"';
	$fourthElement = '"css"';
	$fifthElement = '"results"';
	$firstSubElement = '"position"';
	$secondSubElement = '"name"';
	$thirdSubElement = '"score"';
	$fourthSubElement = '"gotyPointsScore"';

	foreach($competitionsList as $competition){
		$winner = " - ";
		$css = " - ";
		if(count($competition->results) > 0){
			$tmp = array_values($competition->results);
			$first = $tmp[0];
			$winner = $first->playerName;
			$css = $first->competitionCss;	
		}

		$compJson = '{' . $firstElement. ':"' . $competition->compName . '",';
		$compJson .= $secondElement . ':"' . $competition->date . '",';
		$compJson .= $thirdElement . ':"' . $winner . '",';
		$compJson .= $fourthElement . ':"' . $css . '",';
		$compJson .= $fifthElement . ':[';
		if(count($competition->results) > 0){
			foreach($competition->results as $score){
				$compJson .= '{' . $firstSubElement .':"' . $score->position . '",';
				$compJson .=  $secondSubElement .':"' . $score->playerName . '",';
				$compJson .=  $thirdSubElement .':"' . $score->originalNetScore . '",';
				$compJson .=  $fourthSubElement .':"' . $score->gotyPointsScore . '"},';
			}
			$compJson = substr($compJson, 0, -1);
		}
		$compJson .= ']}';
		array_push($compsJson, $compJson);
	}
	$json = '[';
	foreach($compsJson as $compJson){
		$json .= $compJson . ',';
	}
	$json = substr($json, 0, -1);
	$json .= ']';

	echo $json;

	function convertDate($sqlDate, $format){
		$date = strtotime($sqlDate);
		return date($format, $date);
	}

?>