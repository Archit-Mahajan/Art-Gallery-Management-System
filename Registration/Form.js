const sfn = document.getElementById("sfn");
const sln = document.getElementById("sln"); 
const se = document.getElementById("se"); 
const sa = document.getElementById("sa"); 
const reg = document.getElementById("reg");

reg.onclick = function(event) {
    event.preventDefault();

    let fname = document.getElementById("fname").value; 
    let lname = document.getElementById("lname").value; 
    let email = document.getElementById("email").value;
    let amt = Number(document.getElementById("amt").value); 

    sfn.textContent = "";
    sln.textContent = "";
    se.textContent = "";
    sa.textContent = "";

    if (fname === "") {
        sfn.textContent = " Firstname can't be blank";
    }
    if (lname === "") {
        sln.textContent = " Lastname can't be blank";
    }
    if (email === "") {
        se.textContent = " Email can't be blank";
    }
    if (amt <= 1000 || amt >= 10000) {
        sa.textContent = " Should be between 1000 and 10000";
    }
};
