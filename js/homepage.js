function watch() {
	
	var w = confirm("You will be charged additional data charges to watch the show online");
	
	if (w == true) {
		location.href("#");
	}
	else {
		alert("Returned to the same page!");
	}
}

function votenow() {
	alert("Login With Your Credentials Before Vote!");
}

function votingresults() {
	
	var vresults = confirm("Voting Results of Session 1 & Session 2 Will Be Displayed");
	
	if (vresults == true) {
		location.href=("results.html");
	}
	else {
		alert("Returned to the same page!");
	}
}


