<?php
    include ("db.php");
 
 $serverName = "IEM-YUVALSQL"; //serverName\instanceName

// Since UID and PWD are not specified in the $connectionInfo array,
// The connection will be attempted using Windows Authentication.
$connectionInfo = array( "Database"=>"TASMC_ICU_Intensix");
$con = sqlsrv_connect( $serverName, $connectionInfo);

    	$Patient = ($_GET['val1']);
        $TimeVar = ($_GET['val2']);

 
    	 $sql = "SELECT * FROM dbo.Signals INNER JOIN dbo.Parameters  on dbo.Signals.ParameterID = dbo.Parameters.ParameterID WHERE PatientID=$Patient AND Time='$TimeVar'";

 

            $records = sqlsrv_query($con,$sql);

            echo "<table border=1 cellpadding=1 cellspacing=1>
                <tr>
                    <th> PatientID </th>
                    <th> ParameterName </th>
                    <th> Time </th>
                    <th> Value </th>
                    <th> Michael_Type </th>
                </tr>";
      
      
  
 
do {
     while ($row = sqlsrv_fetch_array($records, SQLSRV_FETCH_ASSOC)) {

                echo "<tr>";
                echo "<td>" . $row['PatientID'] . "</td>";
                echo "<td>" . $row['ParameterName'] . "</td>";
                echo "<td>" .  date_format($row['Time'], 'Y-m-d H:i:s') . "</td>";
                echo "<td>" . $row['Value'] . "</td>";
                echo "<td>" . $row['Michael_Type'] . "</td>";
                echo "</tr>";
      
     }
} while ( sqlsrv_next_result($records) ); 

echo "</table>";

        

    	sqlsrv_free_stmt( $records);
sqlsrv_close( $con);

    
?>