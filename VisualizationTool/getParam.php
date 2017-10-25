<html>

	<?php 
	$serverName = "IEM-YUVALSQL"; //serverName\instanceName
	$connectionInfo = array( "Database"=>"Ichilov");
	$con = sqlsrv_connect( $serverName, $connectionInfo);

 	$PatientVar = ($_POST['PatientID']);
	$sql="SELECT distinct [TASMC_ICU_Intensix].[dbo].Parameters.ParameterName FROM  [TASMC_ICU_Intensix].[dbo].[Signals] INNER JOIN [TASMC_ICU_Intensix].[dbo].[Parameters] on [TASMC_ICU_Intensix].[dbo].[Signals].ParameterID = [TASMC_ICU_Intensix].[dbo].Parameters.ParameterID WHERE PatientID =$PatientVar and [TASMC_ICU_Intensix].[dbo].[Parameters].ParameterID  in ('4704', '6636', '6637', '7719', '8417', '8719', '8720', '9630', '10997','4727', '6627', '6628', '9231', '9434', '9474','5433', '9472', '10825', '10999', '11084','4721','5532','5644', '5945', '5952', '6380', '7104','4717','9649','4612','11017'	,'7295','11016','4631' ,'4611' ,'6173','6934', '4726', '8420')";


	$records = sqlsrv_query($con,$sql);
	?>
	<option value="">Select Parameter</option>
	
	<?php
	do{
	while($row = sqlsrv_fetch_array($records, SQLSRV_FETCH_ASSOC)){
		?>
		<option value ="<?php echo $row["ParameterName"]; ?>"> <?php echo $row["ParameterName"]; ?> </option>
		<?php
		} 
	} while ( sqlsrv_next_result($result) );
	?>

</html>



