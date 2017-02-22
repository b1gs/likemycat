function openTab( evt, tabName ){
    var i,x, tablinks;
    var x = document.getElementsByClassName("loginFormContent");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }

    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < x.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" w3-gray", "");
    }
    document.getElementById(tabName).style.display = "block";
    evt.currentTarget.className += " w3-gray";
}

function showImage(evt){
    var f = evt.target.files[0];
    var fr = new FileReader();
    evt.target.style.visibility = 'hidden';
    var parentNode = document.getElementById('parentNode');
    fr.onload = function(ev2) {
        console.dir(ev2);
        var el =document.getElementById('image');
        el.setAttribute('src',ev2.target.result);
        parentNode.removeChild(evt.target);
    };

    fr.readAsDataURL(f);
}