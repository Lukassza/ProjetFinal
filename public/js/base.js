let nuit = document.querySelector(".nuit");
let nav = document.querySelector("nav");
let a = document.querySelectorAll("a");
let icon = document.querySelector(".fa-solid");
let body=document.body;




nuit.addEventListener("click", function (e) {
    a.forEach(function(a) {
  if (a.classList.contains("anuit")) {
    a.classList.remove("anuit");
    nav.classList.remove("navnuit");
    body.classList.remove("bodynuit");
    icon.classList.remove("farnuit");
    icon.classList.remove("fa-sun");
    icon.classList.add("fa-moon");
  } else {
    a.classList.add("anuit");
    nav.classList.add("navnuit");
    body.classList.add("bodynuit");
    icon.classList.add("farnuit");
    icon.classList.remove("fa-moon");
    icon.classList.add("fa-sun");
  }
});
});



document.addEventListener("DOMContentLoaded", function () {
  const dropdownToggle = document.querySelector(".dropdown-toggle");
  const dropdownContent = document.querySelector(".dropdown-content");

  dropdownToggle.addEventListener("click", function () {
    if (dropdownContent.style.display === "block") {
      dropdownContent.style.display = "none";
    } else {
      dropdownContent.style.display = "block";
    }
  });
});