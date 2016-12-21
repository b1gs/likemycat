/**
 * Created by oleksandr.volkovskyi on 2/5/2016.
 */


function openTab(cityName) {
    var i;
    var x = document.getElementsByClassName("news");
    for (i = 0; i < x.length; i++) {
        x[i].style.display = "none";
    }
    document.getElementById(cityName).style.display = "block";
};

