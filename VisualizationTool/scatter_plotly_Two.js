function scatter_TwoFunc(jsonRes)  { 
  
hoverInfo = document.getElementById('box');
var xtime=[];
var yVal=[];
var zTag=[];
var patient = $('#categoriesSelect').val();
var parameter = $('#subcatsSelect').val();
var parameter2 = $('#subcatsTwoSelect').val();

var file = jsonRes;


var x = [];
var y = [];

var x1red = [];
var y1red = [];

var x2red = [];
var y2red = [];

var x2 = [];
var y2 = [];


for (var i =0; i< file.length ;i++) {
 if(file[i].Tag==1){
  if(file[i].ParameterName==parameter)
  {
     x1red[i]=file[i].Time.date;
     y1red[i]=file[i].Value;
  }
  
else{
    x2red[i]=file[i].Time.date;
   y2red[i]=file[i].Value;
}
 

 }
 else
 {
  if(file[i].ParameterName==parameter)
  {
   x[i]=file[i].Time.date;
   y[i]=file[i].Value;
  }
  else
  {
   x2[i]=file[i].Time.date;
   y2[i]=file[i].Value;
  }
 
 
}
xtime[i] =file[i].Time.date;
yVal[i] =file[i].Value;
zTag[i] =file[i].Tag;
}

var myPlot = document.getElementById('myScatterPlotlyTwo'),

trace1 = {
  x: x,
  y: y,

  mode: 'markers',
  marker:{
    size: 16,
    color: 'blue'
  },
  name: parameter,
  type: 'scatter'
},

trace2 = {
  x: x1red,
  y: y1red,
  
  mode: 'markers',
  marker:{
    size: 16,
    color: "red"
  },
  name: 'abnormal ' + parameter,
  type: 'scatter'
},

trace3 = {
  x: x2,
  y: y2,
  
  mode: 'markers',
  marker:{
    size: 16,
    color: "orange"
  },
  name: parameter2,
  yaxis: 'y2',
  type: 'scatter'
},

trace4 = {
  x: x2red,
  y: y2red,
  
  mode: 'markers',
  marker:{
    size: 16,
    color: "red"
  },
  name: 'abnormal ' + parameter2,
  yaxis: 'y2',
  type: 'scatter'
},


data = [trace1, trace2, trace3, trace4],

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
    title: parameter,
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },

  yaxis2: {
    title: parameter2,
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
                 },
    overlaying: 'y',
    side: 'right'
  }

};

Plotly.newPlot('myScatterPlotlyTwo', data, layout);

}