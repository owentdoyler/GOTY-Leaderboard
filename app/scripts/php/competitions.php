<?php
    require("connect.php");

    $competitions_query = "SELECT * FROM competitions GROUP BY compNum";
    $competitions_query_response = @mysqli_query($database, $competitions_query);

    $competitions = array();
	
	if($competitions_query_response){
		while($row = mysqli_fetch_array($competitions_query_response)){
			array_push($competitions, $row['compName']);
		}
	}
?>