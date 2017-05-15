<?php
    require("score.php");
    function group_scores($scoreQueryResponse){
        // $query = getPlayerScoreQuery($playerName);
        // $response = @mysqli_query($database, $query);
        $scoreList = array();
        if($scoreQueryResponse){
            while($scoreData = mysqli_fetch_array($scoreQueryResponse)){
                $score = new Score();
                $score->position = $scoreData['position'];
                $score->playerName = $scoreData['playerName'];
                $score->competitionNumber = $scoreData['compNum'];
                $score->competitionName = $scoreData['compName'];
                $score->competitionCss = $scoreData['css'];
                $score->originalNetScore = $scoreData['score'];
                $score->gotyScore = $scoreData['gotyScore'];
                array_push($scoreList, $score);
            }
        }
        return $scoreList;
    }

    function getScoresByCompetitionQuery($compNumber){
	return"SELECT * FROM scores where compNum='" . $compNumber . "'";
	}

    
	function getScoresByPlayerQuery($name){
		return "SELECT * FROM scores WHERE playerName='" . $name ."'";
	}
?>