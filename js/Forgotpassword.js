function checkPassword(password,repassword) {
	if("password" == "repassword")
	{
		alert("Success!");
	}
	else
	{
		alert("Password Mismatch!");
	}
}

function enableButton() {
	var checkBox = document.getElementById("agree");
	
	if(checkBox.checked == true) {
		document.getElementById("mybtn").disabled = false;
	}
}