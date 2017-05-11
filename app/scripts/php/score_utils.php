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
                $score->ompetitionCss = $scoreData['css'];
                $score->noriginalNetScore = $scoreData['score'];
                $score->gotyScore = $scoreData['gotyScore'];
                array_push($scoreList, $score);
            }
        }
        return $scoreList;
    }
?>