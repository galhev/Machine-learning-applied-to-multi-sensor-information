function myBoxPlotTwoFunc(jsonRes){

  var file = jsonRes;
  
  var arr = [];
var parameter2 = $('#subcatsTwoSelect').val();

  for (var i =0; i< file.length ;i++) {

    if(file[i].ParameterName==parameter2)
    {
      arr[i]=file[i].Value;
    }
   
 }


 var trace1 = {
  y: arr,
  name: parameter2,
  type: 'box'
};



var data = [trace1];


Plotly.newPlot('myBoxPlotTwo', data);

}

