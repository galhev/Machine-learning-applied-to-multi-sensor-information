
  <!DOCTYPE html>
  <html>
  <meta charset="utf-8">
  <head>
    <title>Ichilov Visualization Tool</title>
    <script src="http://d3js.org/d3.v3.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    <script src="http://d3js.org/d3.v3.js"></script>
  

   <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js"></script>

    <link href="style/SidBarStyle.css" rel="stylesheet">
    <link href="style/styleScatter.css" rel="stylesheet">
    <link href="style/style.css" rel="stylesheet">

    <style>
          #frame {
             float: left;
              border-radius: 25px;
              background: lightgrey;
              background-position: left top;
              background-repeat: repeat;
              padding: 70px;
              width: 300px;
              margin-top: 50px;
          }

          #frame2 {
             float: right;
              border-radius: 25px;
              background: lightgrey;
              background-position: left top;
              background-repeat: repeat;
              padding: 70px;
              width: 300px;
              margin-top: 50px;
          }
</style>

  </head>
    <script type="text/javascript">
    function getParam(val)
    {
      $.ajax({
        type: "POST",
        url: "getParam.php",
        data: 'PatientID=' +val,
        success: function(data){
          $("#subcatsSelect").html(data);
          $("#subcatsTwoSelect").html(data);
        }
      });
    }



    </script>
  <body>



    <!-- SideBar -->
    <div class="nav-side-menu">
      <div class="brand"><font size="6">Ichilov DB</font></div>
      <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>

      <div class="menu-list">

        <ul id="menu-content" class="menu-content collapse out">
          <li>
            <a href="#">
              <i class="fa fa-dashboard fa-lg"></i> Dashboard
            </a>
          </li>

          
          <div class="selection" style="padding-left:20px">
              <font size="3"><h3>Select Patient Id and Parameters</h3></font>
              <font size="4"><label>Choose patient id</label></font>
              <select id="categoriesSelect" onChange="getParam(this.value);">
              <option value="">Select Patient</option>
              <?php 
              $serverName = "IEM-YUVALSQL"; //serverName\instanceName
              $connectionInfo = array( "Database"=>"Ichilov");
              $con = sqlsrv_connect( $serverName, $connectionInfo);

              $sql="SELECT * FROM Ichilov.dbo.ML_patients";
              $records = sqlsrv_query($con,$sql);
                $data = array();
              
              do{
              while($row = sqlsrv_fetch_array($records, SQLSRV_FETCH_ASSOC)){
                ?>
                <option value ="<?php echo $row["PatientID"]; ?>"> <?php echo $row["PatientID"]; ?> </option>
                <?php
                } 
              } while ( sqlsrv_next_result($result) );
              ?>
            </select>

            <font size="4"><label>Choose first parameter</label></label>
          <div>
            <select id='subcatsSelect'>
               <option>Select parameter</option>
            </select>
          </div>
           <font size="4"><label>Choose second parameter</label></label>
          <div>
            <select id='subcatsTwoSelect'>
              <option>Select parameter</option>
            </select>
          </div>
            
          </div>
          
        </ul>
      </div>
    </div>
  </div>

  <!-- SideBar -->




  <ul class="tab">
    <li><a href="#" class="tablinks" onclick="openTab(event, 'Ichilov DB')">Ichilov</a></li>
    <li><a href="#" class="tablinks" onclick="openTab(event, 'Summary')">Summary</a></li>
    <li><a href="#" class="tablinks" onclick="openTab(event, 'BoxPlot')">BoxPlot</a></li>
    <li><a href="#" class="tablinks" onclick="openTab(event, 'Histogram')">Histogram</a></li>
   <li><a href="#" class="tablinks" onclick="openTab(event, 'Date Time Plot')">Date Time Plot</a></li>
    <li><a href="#" class="tablinks" onclick="openTab(event, 'ScatterPlot')">ScatterPlot</a></li>
    <li><a href="#" class="tablinks" onclick="openTab(event, 'Correlation Matrix')">Correlation Matrix</a></li>
  </ul>

  <div id="Ichilov DB" class="tabcontent" style="padding-left:400px">
    <h3>Thesis abstract</h3>
    
    <div> 

    <p>Clinical alarms have become an integral part of medical environment to monitor patient's physiological state. In order to detect abnormal changes in patient condition these monitoring systems have a high sensitivity rate. However, these monitors generate a high ratio of false positive or clinically not relevant alarms due to a low alarm specificity. 

Multiple studies revealed that false alarms rate ranges from 72%-99% and has a negative impact on both patients and staff. High levels of false alarms have resulted in a stressful working environment for healthcare professionals that are getting more desensitized to triggered alarms. The patient safety is also compromised by having high noise levels in the patient room, which disturbs their sleep and extending the duration of their stay in ICU. The high rate of either false or insignificant alarms have remained over the past two decades an important yet unresolved concern in the Intensive Care Unit (ICU) and should continue to be explored in further studies. 

In this thesis we aimed at minimizing the number of false positive alarms alongside increasing the patient safety in critical care. We apply a decision-making approach that simulates a specialized doctor who diagnose patient's condition by correlates multiple signals across monitor's sensors. The suggested algorithm is capable of discriminating noise from real signal using a predefined threshold that gives an alert when one or more vital sign parameters has crossed the criterion for one or more minutes. The algorithm consists of several scenarios while each contains multiple signals of a monitoring system that are used to classify given alarm situations. In particular we focus on 17 alarm types and let our system decide whether the triggered alarm is clinically relevant or can be considered as a false alarm.
</p>

    <img src="tasmc6.jpg" alt="Ichilov" style="width:304px;height:228px;">
    <p>Tel Aviv Sourasky Medical Center (Ichilov)</p>

    </div> 


  </div>

  <div id="Summary" class="tabcontent" style="padding-left:400px">
    <h3>Summary</h3>
    <p>Descriptive Statistics</p> 
    
    

    <div id="frame"> 
    <h4 id="namePar"></h4>
    <p id="avg"></p>
    <p id="std_param"></p>
    <p id="max"></p>
    <p id="min"></p>
    <p id="median"></p>
    </div>

    <div id = "frame2">
    <h4 id="nameParTwo"></h4>
     <p id="avgTwo"></p>  
     <p id="std_paramTwo"></p> 
     <p id="maxTwo"></p>
     <p id="minTwo"></p> 
     <p id="medianTwo"></p>
    </div>
  </div>

  <div id="BoxPlot" class="tabcontent" style="padding-left:400px">
    <h3>BoxPlot</h3>
    <p>BoxPlot</p>
    <div id="myBoxPlot"></div>
     <div id="myBoxPlotTwo"></div>

  </div>

  <div id="Histogram" class="tabcontent" style="padding-left:400px">
    <h3>Histogram</h3>
    <p>Histogram</p>
    <div id="hist"></div>
    <div id="histTwo"></div>
 
  </div>

  <div id="Date Time Plot" class="tabcontent" style="padding-left:400px">
    <h3>Date Time Plot</h3>
    <div id="myScatterPlotly"></div>
   <div id="box"></div>
   <div id="myScatterPlotlyTwo" style="padding-right:500px"></div>
 </div>

  <div id="Events" class="tabcontent" style="padding-left:400px">
    <h3>Date Time Plot</h3>
    <div id="myScatterPlotlyScenes"></div>
   <div id="box2"></div>
 </div>

 <div id="ScatterPlot" class="tabcontent" style="padding-left:400px">
  <h3>ScatterPlot</h3>
  <p>ScatterPlot graph of patient data.</p>
  <div id="myScatterPlotlyParams"></div>
</div>

<div id="Correlation Matrix" class="tabcontent" style="padding-left:400px">
  <h3>Correlation Matrix</h3>
  <p>Correlation Matrix graph of patient data.</p>

  <div>
    <div id="genderBox" ></div>
    <div id="ageBox" ></div>
  </div>

</div>




<script type="text/javascript">

  function openTab(evt, tabName) {
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
      tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
      tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " active";
  }
</script>

<script src="statistics.js" type="text/javascript"></script>
<script src="BoxPlotGraph.js" type="text/javascript"></script>
<script src="BoxPlotTwoGraph.js" type="text/javascript"></script>
<script src="histogramGraph.js" type="text/javascript"></script>
<script src="histogramTwoGraph.js" type="text/javascript"></script>
<script src="new_scatter_plotlyGraph.js" type="text/javascript"</script>
<script src="scatter_plotly_Two.js" type="text/javascript"></script>
<script src="new_scatter_plotly_paramsGraph.js" type="text/javascript"></script>
<script src="patientData.js" type="text/javascript"></script>
<script src="senarios.js" type="text/javascript"></script>

<script type="text/javascript">

var s1=0;
var s2=0;
var axisPadding =20;


  $('#categoriesSelect').change(function()
    {
        populateSecond();
        console.log("changed patient");
    });

  $('#subcatsSelect').change(function()
    {
      s1=1;
     
      console.log("changed drop1, s1:" + s1 +"s2 "+s2);
      if(s2==1)
      {
        addToDB();
      }
       
    });
    $('#subcatsTwoSelect').change(function()
    {
      s2=1;
      
      console.log("changed drop2 ,s1:" + s1 +"s2 "+s2);
      if(s1==1)
      {
        addToDB();
      }
    });



function populateSecond()
    {
      s1=0;
      s2=0;
                  
    }


 function addToDB(){
      
        var first = $('#categoriesSelect').val();
        var second = $('#subcatsSelect').val();
        var third = $('#subcatsTwoSelect').val();
        if((second != "0")&&(third != "0"))
        {                  
           GetDataUsingAJAX(first, second, third);
           
        }      
}

   
 populateSecond();





function  GetDataUsingAJAX(first, second, third)
    {
      $.ajax({
        type: "POST",
        dataType: "json",
        url: "new4.php",
        data: "val1=" + first + "&val2=" + second + "&val3=" + third,
        success: function(jsonRes){
             statisticsFunc(jsonRes);
             myBoxPlotFunc(jsonRes); 
             myBoxPlotTwoFunc(jsonRes); 
             histogramFunc(jsonRes); 
             histogramTwoFunc(jsonRes);
             new_scatter_plotlyFunc(jsonRes);
             scatter_TwoFunc(jsonRes); 
             new_scatter_plotly_paramsFunc(jsonRes);
             patientDetails();
             patientEvents(jsonRes);
           }  
         
        
      });
    }

</script>

</body>
</html>