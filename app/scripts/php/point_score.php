<?php

class point_score{
    public $position = 0;
    public $playerName = " - ";
    public $competitionNumber = 0;
    public $competitionName = '';
    public $competitionCode = '';
    public $originalNetScore = 0;
    public $gotyPointsScore = 0;

    private $gotyPoints = [
        "medal" => [25, 20, 18, 16, 14, 12, 10, 8, 6, 4],
        "captains" => [30, 25, 18, 16, 14, 12, 10, 8, 6, 4],
        "presidents" => [30, 25, 18, 16, 14, 12, 10, 8, 6, 4],
        "matchplay" => [30, 20, 10]
    ];

    public function pointsScore() {
        $points = $this->gotyPoints[$this->competitionCode];
        $places = count($points);
        return $places < $this->position ? 2 : $points[$this->position - 1];
    }
}

?>