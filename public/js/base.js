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

