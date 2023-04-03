let nuit = document.querySelector(".nuit");
let nav = document.querySelector(".nav");
let a= document.querySelector("a");

nuit.addEventListener("click",function(e){
    
    if(a.classList.contains("anuit")){
        a.classlist.remove("anuit")
    }
    else{a.classList.add("anuit") }
});