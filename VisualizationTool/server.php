<?php
    include ("db.php");
 
$serverName = "IEM-YUVALSQL"; 
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$conn = sqlsrv_connect( $serverName, $connectionInfo);
    	
     $PatientVar = ($_POST['val1']);
     $TimeVar = ($_POST['val2']);
       $file = fopen("test.txt","w");
       echo fwrite($file, "UPDATE  dbo.Signals SET Tag = 1 WHERE PatientID = '$PatientVar' AND Time = '$TimeVar'");
       fclose($file);
    	$sql ="UPDATE  dbo.Signals SET Tag = 1 WHERE PatientID = '$PatientVar' AND Time = '$TimeVar'";
    	
    $stmt = sqlsrv_query( $conn, $sql);
    if( $stmt === false ) {
     echo "Error in executing query.</br>";
     die( print_r( sqlsrv_errors(), true));
}

?>