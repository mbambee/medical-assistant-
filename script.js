document.getElementById("submit").addEventListener("click", validateForm)
function validateForm(ev) {
    ev.preventDefault();
    var nom = document.getElementById("nom").value;
    var prenom = document.getElementById("prenom").value;
    var email = document.getElementById("email").value;
    var password = document.getElementById("password").value;

    if (nom.length < 4) {
        document.querySelector(".errNom").innerHTML = "<p style='color:red;font-size:11px'>Le nom doit contenir au moins 4 caractères.</p>"
    } else {
        document.querySelector(".errNom").innerHTML = ""
    }
    if (prenom.length < 4) {

        document.querySelector(".errPrenom").innerHTML = "<p style='color:red;font-size:11px'>Le Prénom doit contenir au moins 4 caractères.</p>"
    } else {
        document.querySelector(".errPrenom").innerHTML = ""
    }

    var emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
    if (!emailPattern.test(email)) {
            document.querySelector(".errEmail").innerHTML = "<p style='color:red;font-size:11px'>Veuillez entrer une adresse email valide.</p>"
        } else {
            document.querySelector(".errEmail").innerHTML = ""
        }
    

    if (password.length < 8) {
        
        document.querySelector(".errPassword").innerHTML = "<p style='color:red;font-size:11px'>Le mot de passe doit contenir au moins 8 caractères.</p>"
    } else {
        document.querySelector(".errPassword").innerHTML = ""
    }
    valideGenre=document.getElementById("genreM").checked || document.getElementById("genreF").checked
    if (!valideGenre) {
        document.querySelector(".errGenre").innerHTML = "<p style='color:red;font-size:11px'>Veuillez sélection le genre.</p>"
    } else {
        document.querySelector(".errGenre").innerHTML = ""
    }
    valideNotifications=document.getElementById("notifications").checked 
    if (!valideNotifications) {
        document.querySelector(".errNotifications").innerHTML = "<p style='color:red;font-size:11px'>Veuillez coché la notification.</p>"
    } else {
        document.querySelector(".errNotifications").innerHTML = ""
    }

   
}
document.getElementById("btn2").addEventListener("click", generatePassword)
function generatePassword() {
    var length = 10;
    var charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%&*()+";
    var password = "";
    for (var i = 0; i < length; i++) {
        var charIndex = Math.floor(Math.random() * charset.length);
        password += charset[charIndex];
    }
    document.getElementById("password").value = password;
}

document.getElementById("btn3").addEventListener("click", generatePasswordASCII(10))
function generatePasswordASCII(length) {
    var charset = "";
    for (var i = 32; i <= 126; i++) {
        charset += String.fromCharCode(i);
    }
  console.warn(charset)
    var password = "";
    for (var i = 0; i < length; i++) {
        var charIndex = Math.floor(Math.random() * charset.length);
        password += charset[charIndex];
    }
    // return password;
    console.log(password); 
}


