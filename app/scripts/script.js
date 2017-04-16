// Code goes here
var app = angular.module("app", ['ngAnimate']);

app.controller("MyCtrl", function($scope){   
  $scope.show = true;
  $scope.test = "world";
  $scope.teams = 
    [
      {name: "Owen Doyle", score: "270", weeks:[
        {weekNumber: "President's Prize", score: 90},
        {weekNumber: "September Medal", score: 90},
        {weekNumber: "3", score: 90}
      ]},
      
      {name: "Team 2", score: "240", weeks:[
        {weekNumber: "1", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]},
        {weekNumber: "2", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "1", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]},
        {weekNumber: "2", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "1", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]},
        {weekNumber: "2", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 80, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
    
    {name: "Team 3", score: "210", weeks:[
        {weekNumber: "1", score: 70, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]},
        {weekNumber: "2", score: 70, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]},
        {weekNumber: "3", score: 70, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "20"},
              {playerName: "Tony", individualScore: "20"},
              {playerName: "Owen", individualScore: "20"},
              {playerName: "John", individualScore: "20"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]},
      {name: "Team 1", score: "270", weeks:[
        {weekNumber: "1", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "2", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]},
        {weekNumber: "3", score: 90, individualScores:[
              {playerName: "Alan", individualScore: "20"},
              {playerName: "Bob", individualScore: "30"},
              {playerName: "Jim", individualScore: "27"},
              {playerName: "Tony", individualScore: "30"},
              {playerName: "Owen", individualScore: "28"},
              {playerName: "John", individualScore: "30"}
        ]}
      ]}
      
    ];
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
