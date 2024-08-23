alert("Please Enter Name Of The Singer!");

function home() {
	
	var hom = confirm("Let's go to Homepage!");
	
	if (hom == true) {
		location.href=("homepage.html");
	}
	else {
		alert("Returned to the same page!");
	}
}

