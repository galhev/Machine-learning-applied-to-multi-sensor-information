function patientDetails(){

var patient = $('#categoriesSelect').val();
GetGenderDataUsingAJAX(patient);
GetAgeDataUsingAJAX(patient);

function GetGenderDataUsingAJAX(patient) {
  request = new XMLHttpRequest();
  request.onreadystatechange = ProcessGenderResponse;
  request.open("GET", "gender.php?patient=" + patient, true);
  request.send();
}

function ProcessGenderResponse() {
  if (request.readyState == 4 && request.status == 200) {
   document.getElementById("genderBox").innerHTML = request.responseText;

 }
}

function GetAgeDataUsingAJAX(patient) {
  request = new XMLHttpRequest();
  request.onreadystatechange = ProcessAgeResponse;
  request.open("GET", "age.php?patient=" + patient, true);
  request.send();
}

function ProcessAgeResponse() {
  if (request.readyState == 4 && request.status == 200) {
   document.getElementById("ageBox").innerHTML = request.responseText;

 }
}

}