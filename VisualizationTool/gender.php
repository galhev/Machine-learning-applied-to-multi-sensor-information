<?php
    include ("db.php");
 
 $serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$con = sqlsrv_connect( $serverName, $connectionInfo);

    	$Patient = ($_GET['patient']);
     
    	 $sql = "SELECT [TextID] FROM [TASMC_ICU_Intensix].[dbo].[TextSignals] WHERE PatientID =$Patient and [ParameterID]=8042";
$records = sqlsrv_query($con,$sql);
 
do {
     while ($row = sqlsrv_fetch_array($records, SQLSRV_FETCH_ASSOC)) {
				if($row['TextID']==1)
					echo "<p> Gender: Male</p>";
				else
					echo "<p> Gender: Female</p>";               
   
     }
} while ( sqlsrv_next_result($records) ); 


$myfile = fopen("dddddddddddddd.json", "w") or die("Unable to open file!");
$txt = json_encode($sql);
fwrite($myfile, $txt);
fclose($myfile);

sqlsrv_free_stmt( $records);
sqlsrv_close( $con);




     

    
?>
