// Code goes here
var schedule = angular.module("schedule", ['ngAnimate']);

schedule.controller("ScheduleCtrl", function($scope, $http){
	$http.get("scripts/php/competitions.php").then(
		function(response){
			$scope.competitions = response.data;
		}
	);
	
  $scope.show = true;
  $scope.test = "world";
    $scope.weekShown = -1;
    $scope.teamShown = -1;
    $scope.showTable = false;
  
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
