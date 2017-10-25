<?php
    include ("db.php");
 
 $serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$con = sqlsrv_connect( $serverName, $connectionInfo);
    	$Patient = ($_GET['patient']);
      	$sql="SELECT [Value] FROM [TASMC_ICU_Intensix].[dbo].[DateTimeSignals] WHERE PatientID =$Patient and ParameterID=8013";
$records = sqlsrv_query($con,$sql);

do {
     while ($row = sqlsrv_fetch_array($records, SQLSRV_FETCH_ASSOC)) {
					echo "<p> Age: </p>";
					echo date("Y") - date_format($row['Value'], 'Y');
            
   
     }
} while ( sqlsrv_next_result($records) ); 

sqlsrv_free_stmt( $records);
sqlsrv_close( $con);

   
?>





