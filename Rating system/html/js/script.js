let uname = document.getElementById("uname");
let upass = document.getElementById("upass");

let login = document.querySelector("button")
login.addEventListener("click", Authenticate);

let result = document.getElementById("notify");

function Authenticate() {

   let ID = 20106062;
   let password = 'qwertyuiop123@';

    if (uname.value == ID && upass.value == password){
        setTimeout(() => {
            window.location.href = "file:///C:/Users/Vasanth/Desktop/Rating%20system/html/rating.html";
        }, 2000);
       
    }else{
        result.innerHTML = "Invalid UserID and Password";
    }
}