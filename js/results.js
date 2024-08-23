alert("Please Select The Session To See Voting Results!");

function home() {
	
	var hom = confirm("Let's go to Homepage!");
	
	if (hom == true) {
		location.href=("homepage.html");
	}
	else {
		alert("Returned to the same page!");
	}
}
