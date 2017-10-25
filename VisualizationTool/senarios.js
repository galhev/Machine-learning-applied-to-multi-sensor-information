function patientEvents(jsonRes)  {  
hoverInfo = document.getElementById('box2');
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
 if(file[i].Michael_Alarm==1){     
  if(file[i].Michale_Type.includes("SVT&Hypotension1")){
     x1[i]=file[i].Time.date;
     y1[i]=file[i].Value;    
   }
   if(file[i].Michale_Type.includes("SVT&Hypotension2")){
     x2[i]=file[i].Time.date;
     y2[i]=file[i].Value;
   }
   if(file[i].Michale_Type.includes("Hypovolemia1")){
     x3[i]=file[i].Time.date;
     y3[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Hypovolemia2")){
     x4[i]=file[i].Time.date;
     y4[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Hypovolemia3")){
     x5[i]=file[i].Time.date;
     y5[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Hypovolemia4")){
     x6[i]=file[i].Time.date;
     y6[i]=file[i].Value;
   }
     if(file[i].Michale_Type.includes("LVshock1")){
     x7[i]=file[i].Time.date;
     y7[i]=file[i].Value;
   }  
     if(file[i].Michale_Type.includes("LVshock2")){
     x8[i]=file[i].Time.date;
     y8[i]=file[i].Value;
   }  
     if(file[i].Michale_Type.includes("Ventricular_tachycardia_with_hypotension")){
     x9[i]=file[i].Time.date;
     y9[i]=file[i].Value;
   }  
     if(file[i].Michale_Type.includes("Obstructiveshock1")){
     x10[i]=file[i].Time.date;
     y10[i]=file[i].Value;
   } 
     if(file[i].Michale_Type.includes("Obstructiveshock2")){
     x11[i]=file[i].Time.date;
     y11[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Agitation1")){
     x12[i]=file[i].Time.date;
     y12[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Agitation2")){
     x13[i]=file[i].Time.date;
     y13[i]=file[i].Value;
   }
    if(file[i].Michale_Type.includes("Bradycardia1")){
     x14[i]=file[i].Time.date;
     y14[i]=file[i].Value;
   } 
   if(file[i].Michale_Type.includes("BradycardiaHypotension")){
     x15[i]=file[i].Time.date;
     y15[i]=file[i].Value;
   }     
   if(file[i].Michale_Type.includes("TachycardiaHypotension")){
     x16[i]=file[i].Time.date;
     y16[i]=file[i].Value;
   }               
   if(file[i].Michale_Type.includes("Tachycardia")){
     x17[i]=file[i].Time.date;
     y17[i]=file[i].Value;
   }    
 }
 if(file[i].Michael_Alarm==0){
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
  name: 'No Alarm',
  type: 'scatter'
},

trace2 = {
  x: x1,
  y: y1,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'SVT & Hypotension 1',
  type: 'scatter'
},

trace3 = {
  x: x2,
  y: y2,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'SVT & Hypotension 2',
  type: 'scatter'
},

trace4 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Hypovolemia 1',
  type: 'scatter'
},

trace5 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Hypovolemia 2',
  type: 'scatter'
},

trace6 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Hypovolemia 3',
  type: 'scatter'
},


trace7 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Hypovolemia 4',
  type: 'scatter'
},

trace8 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'LV shock 1',
  type: 'scatter'
},

trace9 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'LV shock 2',
  type: 'scatter'
},

trace10 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Ventricular tachycardia with hypotension',
  type: 'scatter'
},

trace11 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Obstructive shock 1',
  type: 'scatter'
},

trace12 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Obstructive shock 2',
  type: 'scatter'
},

trace13 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Agitation 1',
  type: 'scatter'
},

trace14 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Agitation 2',
  type: 'scatter'
},

trace15 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Bradycardia 1',
  type: 'scatter'
},

trace16 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Bradycardia Hypotension',
  type: 'scatter'
},

trace17 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Tachycardia Hypotension',
  type: 'scatter'
},

trace18 = {
  x: x3,
  y: y3,
  
  mode: 'markers',
  marker:{
        size: 16,
        
    },
    name: 'Tachycardia',
  type: 'scatter'
},


data = [trace1, trace2,trace3, trace4, trace5, trace6, trace7, trace8, trace9, trace10, trace11, trace12, trace13, trace14, trace15, trace16, trace17, trace18],

layout = {
  hovermode:'closest',
  title:'Scatter Events',
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

Plotly.newPlot('myScatterPlotlyScenes', data, layout);


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
  GetBox2DataUsingAJAX(timeDate);
$("#box2").show();
hoverInfo.innerHTML = infotext.join('');
})
.on('plotly_unhover', function(data){
  $("#box2").hide(),
  hoverInfo.innerHTML = '';
});

}