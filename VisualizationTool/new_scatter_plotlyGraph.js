function new_scatter_plotlyFunc(jsonRes)  {  
hoverInfo = document.getElementById('box');
var xtime=[];
var yVal=[];
var zTag=[];
var patient = $('#categoriesSelect').val();
var parameter = $('#subcatsSelect').val();

var file = jsonRes;

var x = [];
var y = [];

var x1 = [];
var y1 = [];

var x2 = [];
var y2 = [];

var x3 = [];
var y3 = [];

for (var i =0; i< file.length ;i++) {

if(file[i].ParameterName.localeCompare(parameter)==0){
 if(file[i].Tag==1){
   x1[i]=file[i].Time.date;
   y1[i]=file[i].Value;
  
 }
if(file[i].Michael_Alarm==1){
   x2[i]=file[i].Time.date;
   y2[i]=file[i].Value;
  
 }
 if(file[i].Alarm==1){
   x3[i]=file[i].Time.date;
   y3[i]=file[i].Value;
  
 }
 else
 {
  x[i]=file[i].Time.date;
  y[i]=file[i].Value;
  
}
xtime[i] =file[i].Time.date;
yVal[i] =file[i].Value;
zTag[i] =file[i].Tag;
}
}

var myPlot = document.getElementById('myScatterPlotly'),

trace1 = {
  x: x,
  y: y,
 
  mode: 'markers',
  marker:{
        size: 16,
        color: 'blue'
    },
  name: 'normal',
  type: 'scatter'
},

trace2 = {
  x: x1,
  y: y1,
  
  mode: 'markers',
  marker:{
        size: 16,
        color: "red"
    },
    name: 'Were tagged by visualization tool as abnormal',
  type: 'scatter'
},

trace3 = {
  x: x2,
  y: y2,
  
  mode: 'markers',
  marker:{
        size: 16,
        color: "green"
    },
    name: 'Michael Alarm',
  type: 'scatter'
},

trace4 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        color: "purple"
    },
    name: 'Monitor Alarm',
  type: 'scatter'
},

data = [trace1, trace2,trace3, trace4],

layout = {
  hovermode:'closest',
  title:'Click on Points',
  xaxis: {
    title: 'Time',
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: $('#subcatsSelect').val(),
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  }
};

Plotly.newPlot('myScatterPlotly', data, layout);

myPlot.on('plotly_click', function(data){
  var pts = '';
  var timeVar = [];
  var valueVar = [];
  for(var i=0; i < data.points.length; i++){

    pts = 'x = '+data.points[i].x +'\ny = '+
    data.points[i].y.toPrecision(4) + '\n\n';
    timeVar[0] = data.points[i].x;
    
    valueVar[0] = data.points[i].y;
  }
  alert('Closest point clicked:\n\n'+pts);

var index=xtime.indexOf(timeVar[0]);

  var timeDate = timeVar[0];

  if(zTag[index]==1)
  {
    Plotly.addTraces('myScatterPlotly',{
    x: timeVar,
    y: valueVar,
    marker:{size:16 ,'color': 'blue'},
    name: 'normal'

  });
    $.post('serverDelete.php', {val1: patient, val2: timeDate});
    zTag[index]=0;
  }

else
{
  Plotly.addTraces('myScatterPlotly',{
    x: timeVar,
    y: valueVar,
    marker:{size:16 ,'color': 'red'},
    name: 'Were tagged by visualization tool as abnormal'

  });
    $.post('server.php', {val1: patient, val2: timeDate});
    zTag[index]=1;
}




});

myPlot.on('plotly_hover', function(data){
    var infotext = data.points.map(function(d){
      return (d.data.name+': x= '+d.x+', y= '+d.y.toPrecision(3));
    });

    hoverInfo.innerHTML = infotext.join('');
})


 .on('plotly_unhover', function(data){
    hoverInfo.innerHTML = '';
});

myPlot.on('plotly_hover', function(data){
  var infotext = data.points.map(function(d){
      return ('Gal');
    });

  var timeVar = [];
  for(var i=0; i < data.points.length; i++){
    timeVar[0] = data.points[i].x;
  }
  var timeDate = timeVar[0];
  var patient = $('#categoriesSelect').val();
  GetBoxDataUsingAJAX(timeDate);
$("#box").show();
hoverInfo.innerHTML = infotext.join('');
})
.on('plotly_unhover', function(data){
  $("#box").hide(),
  hoverInfo.innerHTML = '';
});


function GetBoxDataUsingAJAX(val) {
  var patient = $('#categoriesSelect').val();
  request = new XMLHttpRequest();
  request.onreadystatechange = ProcessBoxResponse;
  request.open("GET", "getParameters.php?val1=" + patient + "&val2=" + val, true);
  request.send();
}

function ProcessBoxResponse() {
  if (request.readyState == 4 && request.status == 200) {
   document.getElementById("box").innerHTML = request.responseText;

 }
}

}