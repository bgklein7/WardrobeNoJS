function SwapDivsWithClick(div1, div2) {
    d1 = document.getElementById(div1);
    d2 = document.getElementById(div2);
    if (d2.style.display == "none") {
        d1.style.display = "none";
        d2.style.display = "flex";
    }
    else {
        d1.style.display = "flex";
        d2.style.display = "none";
    }
}
function Greeting() {
    var x = document.getElementById("greet");
    var userResponse = prompt('Welcome to the Wardrobe. What is your name?');
    x.getElementsByTagName('h1')[0].innerText = 'Welcome to the Wardrobe, ' + userResponse;
}

//var lower = 'this is an entirely lowercase string';
//var upper = lower.charAt(0).toUpperCase() + string.substr(1);


function Print() {
    var printCon = alert("Are you sure you want to print this page?");

}
function HideWithClick(div1) {
    d1 = document.getElementById(div1);
    var userCon = confirm('Do you want to remove this box?')
    if (userCon) {
        d1.style.display = "none";
    }
    else {
        d1.style.display = "flex";
    }
}

function TextHighlight(x) {
    
        x.style.fontSize = "xx-large";
        x.style.color = "yellow";
}
function TextUnHighlight(x) {
    x.style.fontSize = "21px";
    x.style.color = "inherit";
}
function Redirect(x) {
    var confirmButton = document.getElementById(x);
    var userResponse = confirm('You are about to leave this site. If you want to stay, please select cancel.');
    var displayContainer = document.getElementById('confirmResponse');
    var displayMessage = '';
    //alert(userResponse); //troubleshooting application
    if (userResponse) {
        var win = window.open("http://www.dappered.com", '_blank');
        win.focus();
    }
}

function getHTML() {
    var userTerm = prompt('What color top would you like to search for?').toLowerCase()
    var topArray = new Array(0);
    var y = document.getElementsByClassName('shirtName').innerHTML;
    var x = document.getElementsByClassName('shirtColor').innerHTML.toLowerCase();
    for (i = 0; i < 5; i++) {

        if (userTerm == x) {
        topArray[i] = document.getElementsByClassName('shirtName').innerHTML;
        document.getElementById("insert").innerHTML = 'See: ' + topArray[i];
            }
    }
    alert(topArray);
}

function Max() {
    var clothesArray = new Array(0);
    var userNum1 = parseInt(prompt('How many pairs of shoes do you have?'));
    clothesArray.push(userNum1);
    var userNum2 = parseInt(prompt('How many pairs of pants do you have?'));
    clothesArray.push(userNum2);
    var userNum3 = parseInt(prompt('How many shirts do you have?'));
    clothesArray.push(userNum3);
    if (clothesArray[0] > clothesArray[1]) {
        alert('You do know that you can wear different shoes with different pants, do you not?');
    }
    if (clothesArray[0] > 20) {
        alert(clothesArray[0] + ' pairs of shoes! Good god, man! You might have a problem.');
    }

}