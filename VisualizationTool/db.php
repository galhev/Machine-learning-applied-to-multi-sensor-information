<?php

$serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$conn = sqlsrv_connect( $serverName, $connectionInfo);


?>

