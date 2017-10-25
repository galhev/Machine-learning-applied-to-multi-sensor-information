function new_scatter_plotly_paramsFunc(jsonRes)  {  

hoverInfo = document.getElementById('box');

var patient = $('#categoriesSelect').val();
var parameter = $('#subcatsSelect').val();
var parameterTwo = $('#subcatsTwoSelect').val();

var file = jsonRes;


var x = [];
var y = [];
var t = [];
var count=0;

for (var i =0; i< file.length ;i++) {

var temp_param=file[i].ParameterName;
var same_time=file[i].Time.date;

for (var j =i+1; j< file.length ;j++) 
{
  if(file[j].Time.date==same_time){

    if(file[j].ParameterName!=temp_param){
      if(file[i].ParameterName==parameter)
      {
      x[count]=file[i].Value;
      y[count]=file[j].Value;
      t[count]=same_time;
    }
    else{
      y[count]=file[i].Value;
      x[count]=file[j].Value;
      t[count]=same_time;
    }
    count++;
    break;
    }  
 }
}

}


var myPlot = document.getElementById('myScatterPlotlyParams'),

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



data = [trace1],

layout = {
  hovermode:'closest',
  title:'Click on Points',
  xaxis: {
    title: $('#subcatsSelect').val(),
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: $('#subcatsTwoSelect').val(),
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  }
};

Plotly.newPlot('myScatterPlotlyParams', data, layout);

myPlot.on('plotly_click', function(data){
  var pts = '';
  var valueVarX = [];
  var valueVarY = [];
  var valueVarT = [];
  for(var i=0; i < data.points.length; i++){

    pts = 'x = '+data.points[i].x +'\ny = '+
    data.points[i].y.toPrecision(4) + '\n\n';
    valueVarX[0] = data.points[i].x;
    valueVarY[0] = data.points[i].y;
    valueVarT[0]=data.points[i].t;
    
  }
  alert('Closest point clicked:\n\n'+pts);





});



}
