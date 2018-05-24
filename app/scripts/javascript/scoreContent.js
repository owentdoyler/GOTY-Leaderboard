// Code goes here
var app = angular.module("app", ['ngAnimate']);

app.controller("MyCtrl", function($scope, $http){
	$http.get("scripts/php/point_scores.php").then(
		function(response){
      $scope.teams = response.data;
      // console.log($scope.teams);
		}
  );
  
  $scope.positions = [
    '1st',
    '2nd',
    '3rd',
    '4th',
    '5th',
    '6th',
    '7th',
    '8th',
    '9th',
    '10th',
    'other'
  ]

  $scope.competitionPoints = [
    {
      competition: "Monthly Medals",
      points: [
        25, 20, 18, 16, 14, 12, 10, 8, 6, 4, 2
      ]
    },
    {
      competition: "Captain's Prize",
      points: [
        30, 25, 18, 16, 14, 12, 10, 8, 6, 4, 2
      ]
    },
    {
      competition: "President's Prize",
      points: [
        30, 25, 18, 16, 14, 12, 10, 8, 6, 4, 2
      ]
    },
    {
      competition: "Singles Matchplay",
      points: [
        30, 20, 10, 10, '', '', '', '', '', '', ''
      ]
    }
  ]
	
  $scope.show = true;
  $scope.test = "world";
    $scope.weekShown = -1;
    $scope.teamShown = -1;
    $scope.showTable = false;

    if (window.matchMedia('screen and (max-width: 500px)').matches) {
      $scope.showDescription = false;  
    }
    else{
      $scope.showDescription = true;
    }
  
    $scope.showTableFn = function(){
      $scope.showTable = !($scope.showTable);
    }

    $scope.showDescriptionFn = function(){
      $scope.showDescription = !($scope.showDescription);
    }

    $scope.setWeekShown = function(weekIndex){
      $scope.weekShown = weekIndex;
    }
    
    $scope.setTeamShown = function(teamIndex){
      $scope.teamShown = teamIndex;
    }
  
    $scope.teamRowClicked = function(index){
      if($scope.teamShown == index){
        $scope.setWeekShown(-1);
        $scope.setTeamShown(-1);
      }
      else{
        $scope.setTeamShown(index);
        $scope.setWeekShown(-1);
      }
    }
    
    $scope.weekRowClicked = function(index){
      if($scope.weekShown == index){
        $scope.setWeekShown(-1);
      }
      else{
        $scope.setWeekShown(index);
      }
    }
    
    $scope.even = function(num){
      return (num % 2) === 0;
    }
});
