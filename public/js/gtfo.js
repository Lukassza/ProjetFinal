window.onload = function() {
    var age = document.querySelector('.age');
    var ageferme = document.querySelector('.ageferme');
    var agetexte = document.querySelector('.agetexte');


    ageferme.onclick = function() {
      age.style.display = 'none';
      agetexte.style.display = 'none';
      
    }
  }