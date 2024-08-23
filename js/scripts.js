
function validationform(){
    var x =document.forms["myform"]["fname"].value;
if(x==""){
    alert("name must be filled out");
    return false;
}
}