function histogramFunc(jsonRes)  {     
var file = jsonRes;
var arr = [];
var parameter = $('#subcatsSelect').val();

for (var i =0; i< file.length ;i++) {
 if(file[i].ParameterName==parameter)
  {
    arr[i]=file[i].Value;
  }
   
}


var data = [
  {
    x: arr,
    type: 'histogram',
      marker: {
    color: 'rgba(100,250,100,0.7)',
    },
  }
];

layout = {
  title:'Histogram',
  xaxis: {
    title: parameter,
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },
  yaxis: {
    title: "Frequency",
    titlefont: {
      family: 'Courier New, monospace',
      size: 18,
      color: '#7f7f7f'
    }
  },


};


Plotly.newPlot('hist', data, layout);

}