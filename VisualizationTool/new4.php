<?php
header("Content-Type: application/json; charset=UTF-8");

include ("db.php");
 
 $serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$con = sqlsrv_connect( $serverName, $connectionInfo);

$PatientVar =  ($_POST['val1']);
$ParameterVar = ($_POST['val2']);
$ParameterVarTwo = ($_POST['val3']);

$response = array();
$posts = array();
$myquery = "SELECT  * FROM  [TASMC_ICU_Intensix].[dbo].[Signals] INNER JOIN [TASMC_ICU_Intensix].[dbo].[Parameters] on [TASMC_ICU_Intensix].[dbo].[Parameters].ParameterID=[TASMC_ICU_Intensix].[dbo].[Signals].ParameterID WHERE PatientID='$PatientVar' and ParameterName in ('$ParameterVar', '$ParameterVarTwo')";

$result = sqlsrv_query( $con, $myquery);

$data = array();

do {
     while ($row = sqlsrv_fetch_array($result, SQLSRV_FETCH_ASSOC)) {
       $data[] = array("PatientID" => $row['PatientID'], "ParameterID" =>$row['ParameterID'], "Time" =>$row['Time'], "Value" =>$row['Value'], "Tag" => $row['Tag'], "ParameterName" => $row['ParameterName'], "ParameterID" =>$row['ParameterID'], "Alarm" =>$row['Alarm'], "Michael_Alarm" =>$row['Michael_Alarm'], "Michael_Type" =>$row['Michael_Type']);

      
     }
} while ( sqlsrv_next_result($result) );


$myfile = fopen("sqlResult.json", "w") or die("Unable to open file!");
$txt = json_encode($data);
fwrite($myfile, $txt);
fclose($myfile);

sqlsrv_free_stmt( $result);
sqlsrv_close( $con);

echo json_encode($data);

?>




