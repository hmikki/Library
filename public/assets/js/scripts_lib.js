$("#profileImage").click(function(e) {
    $("#imageUpload").click();
});
/****** 100 vh section **********/
var elements = document.getElementsByClassName('window-full');
var windowheight = window.innerHeight + "px";

fullheight(elements);
function fullheight(elements) {
    for(let el in elements){
        if(elements.hasOwnProperty(el)){
            elements[el].style.height = windowheight;
        }
    }
}

window.onresize = function(event){
    fullheight(elements);
}