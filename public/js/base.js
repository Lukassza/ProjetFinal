let nuit = document.querySelector(".nuit");
let nav = document.querySelector("nav");
let a = document.querySelectorAll("a");
let body=document.body;



nuit.addEventListener("click", function (e) {
    a.forEach(function(a) {
  if (a.classList.contains("anuit")) {
    a.classList.remove("anuit");
    nav.classList.remove("navnuit");
    body.classList.remove("bodynuit");
  } else {
    a.classList.add("anuit");
    nav.classList.add("navnuit");
    body.classList.add("bodynuit");
    
  }
});
});


let boutton=document.querySelector(".nuit")
let navbar=document.querySelector("navbar")
let lien=document.querySelectorAll("a")

boutton.addEventListener("click", function (e) {
    lien.forEach(function(lien) {
  if (lien.classList.contains("liendark")) {
    lien.classList.remove("liendark");
    navbar.classList.remove("navbardark");

  } else {
    lien.classList.add("liendark");
    navbar.classList.add("navbardark");


  }
});
});
