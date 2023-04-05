let nuit = document.querySelector(".nuit");
let nav = document.querySelector("nav");
let a = document.querySelectorAll("a");
let icon = document.querySelector(".far");
let body=document.body;



nuit.addEventListener("click", function (e) {
    a.forEach(function(a) {
  if (a.classList.contains("anuit")) {
    a.classList.remove("anuit");
    nav.classList.remove("navnuit");
    body.classList.remove("bodynuit");
    icon.classList.remove("farnuit");
  } else {
    a.classList.add("anuit");
    nav.classList.add("navnuit");
    body.classList.add("bodynuit");
    icon.classList.add("farnuit");
    
  }
});
});

