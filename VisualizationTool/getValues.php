<?php

 $serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$con = sqlsrv_connect( $serverName, $connectionInfo);


$PatientVar = mysql_real_escape_string($_POST['val1']);
$ParameterVar = mysql_real_escape_string($_POST['val2']);

$response = array();
$posts = array();
$myquery = "SELECT  Value FROM  dbo.Signals INNER JOIN dbo.Parameters on dbo.Signals.ParameterID = ﻿dbo.Parameters.ParameterID WHERE PatientID='$PatientVar' and ParameterName='$ParameterVar'";


    $data = array();
    
do {
     while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
       $data[] = array("PatientID" => $row['PatientID'], "ParameterID" =>$row['ParameterID'], "Time" =>$row['Time'], "Value" =>$row['Value'], "Tag" => $row['Tag'], "ParameterName" => $row['ParameterName'],  "Michael_Alarm" => $row['Michael_Alarm']);

      
     }
} while ( sqlsrv_next_result($result) );
 //$someArray = json_decode($data, true);
  //print_r($someArray);        // Dump all data of the Array
  //echo $someArray[0]["Value"];
     
$myfile = fopen("Values.json", "w") or die("Unable to open file!");
$txt = json_encode($data);
fwrite($myfile, $txt);
fclose($myfile);

    mysql_close($server);
?>
