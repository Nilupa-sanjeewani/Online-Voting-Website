function votnow() {
  alert("Voted Successfully!");
}

function change1() {
  var txt = confirm("Click OK to go to Gallery Page!");
  if (txt == true){
    location.href = ("gallery.html");
  } 
  else {
    alert("Returned to the same page!");
  }
}

function change2() {
  var txt = confirm("Click OK to go to Vote Now Page!");
  if (txt == true){
    location.href = ("votenow.html");
  } 
  else {
    alert("Returned to the same page!");
  }
}

function home() {
	
	var hom = confirm("Let's go to Homepage!");
	
	if (hom == true) {
		location.href=("homepage.html");
	}
	else {
		alert("Returned to the same page!");
	}
}