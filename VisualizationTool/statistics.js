function statisticsFunc(jsonRes)  {       
var patient = $('#categoriesSelect').val();
var parameter = $('#subcatsSelect').val();
var parameterTwo = $('#subcatsTwoSelect').val();

var file = jsonRes;

var x = [];
var y = [];

for (var i =0; i< file.length ;i++) {
if(file[i].ParameterName.localeCompare(parameter)==0)
    {
      x.push(file[i].Value);
      
    }
  else
  {
      y.push(file[i].Value);

  }

}

var sum = 0;
for( var i = 0; i < x.length; i++ ){
    sum += parseInt( x[i], 10 ); //don't forget to add the base
}
var avg = sum/x.length;

var v1=0;
var total=0;
for(var i = 0; i < x.length; i++) {
      v1 = Math.pow(parseFloat(x[i]-avg),2);
     total += v1;
    } 
var variance= total/x.length;
var std1 = Math.sqrt(variance);
var max1 = Math.max.apply(Math, x);
var min1 = Math.min.apply(Math, x);
var median = medianFunc(x);

var sum2 = 0;
for( var i = 0; i < y.length; i++ ){
    sum2 += parseInt( y[i], 10 ); //don't forget to add the base
}
var avg2 = sum2/y.length;

var v2=0;
var total2=0;
for(var i = 0; i < y.length; i++) {
      v2 = Math.pow(parseFloat(y[i]-avg2),2);
     total2 += v2;
    } 
var variance2= total2/y.length;
var std2 = Math.sqrt(variance2);

var max2 = Math.max.apply(Math, y);
var min2 = Math.min.apply(Math, y);
var median2 = medianFunc(y);


document.getElementById("namePar").innerHTML = parameter;
document.getElementById("avg").innerHTML =  "AVG: " +avg;
document.getElementById("std_param").innerHTML =  "STD: " +std1;
document.getElementById("max").innerHTML = "Max: " + max1;
document.getElementById("min").innerHTML = "Min: " + min1;
document.getElementById("median").innerHTML = "Median: " + median;

document.getElementById("nameParTwo").innerHTML = parameterTwo;
document.getElementById("avgTwo").innerHTML = "AVG: " +avg2;
document.getElementById("std_paramTwo").innerHTML = "STD: " + std2;
document.getElementById("maxTwo").innerHTML = "Max: " + max2;
document.getElementById("minTwo").innerHTML = "Min: " + min2;
document.getElementById("medianTwo").innerHTML = "Median: " + median2;


if(parameter==parameterTwo){
   $("#nameParTwo").hide();
  $("#avgTwo").hide();
  $("#std_paramTwo").hide();
    $("#maxTwo").hide();
  $("#minTwo").hide();
    $("#medianTwo").hide();
  $("#frame2").hide();
}
else{
   $("#nameParTwo").show();
    $("#avgTwo").show();
  $("#std_paramTwo").show();
    $("#maxTwo").show();
  $("#minTwo").show();
   $("#medianTwo").show();
    $("#frame2").show();
  }

  function medianFunc(values) {

    values.sort( function(a,b) {return a - b;} );

    var half = Math.floor(values.length/2);

    if(values.length % 2)
        return values[half];
    else
        return (values[half-1] + values[half]) / 2.0;
}

}