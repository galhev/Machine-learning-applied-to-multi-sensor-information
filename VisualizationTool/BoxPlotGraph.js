

function myBoxPlotFunc(jsonRes)  {   

var file = jsonRes;

var arr = [];

var parameter = $('#subcatsSelect').val();

  for (var i =0; i< file.length ;i++) {

    if(file[i].ParameterName==parameter)
    {
      arr[i]=file[i].Value;
    }
   
 }
 

 var trace1 = {
  y: arr,
  name: parameter,
  type: 'box'
};



var data = [trace1];


Plotly.newPlot('myBoxPlot', data);


}