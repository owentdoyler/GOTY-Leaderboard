<?php
require("connect.php");
require("player.php");
require("score_utils.php");

define("COUNTING", 7);

$players_query = "SELECT playerName FROM scores GROUP BY playerName";
$players_query_response = @mysqli_query($database, $players_query);


$players = array();

if($players_query_response){
    while($row = mysqli_fetch_array($players_query_response)){
        array_push($players, $row['playerName']);
    }
}

$playersList = array();

foreach ($players as $playerName){
    $query = getScoresByPlayerQuery($playerName);
    $response = @mysqli_query($database, $query);
    $scoreList = group_points_scores($response);
    //sort scores array so that the top five scores are first
    @usort($scoreList, function($a, $b){
        if($a->gotyPointsScore < $b->gotyPointsScore) return 1;
        elseif ($a->gotyPointsScore > $b->gotyPointsScore) return -1;
        else return 0;
    });

    //calculate the players over all score selecting the best
    //5 when the number of scores a player has is greater than 5
    $overallScore = 0;
    if(count($scoreList) > COUNTING){
        $tmp = array_slice($scoreList, 0, COUNTING);
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

    array_push($playersList, $player);
}

usort($playersList, function($a, $b){
    if($a->overallScore < $b->overallScore) return 1;
    elseif ($a->overallScore > $b->overallScore) return -1;
    else return 0;
});

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
        $playerJson .=  $secondSubElement .':"' . $score->gotyPointsScore . '"},';
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
        $total += $score->gotyPointsScore;
    }
    return $total;
}

?>