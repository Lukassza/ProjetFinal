window.onload = function() {
    let age = document.querySelector('.age');
    let ageferme = document.querySelector('.ageferme');
    let agetexte = document.querySelector('.agetexte');


    ageferme.onclick = function() {
      age.style.display = 'none';
      agetexte.style.display = 'none';
      
    }
  }


function snow() {
  // TWEAK VALUES
  let amount = 300; // snowfall thickness
  let baseSize = 1; // smallest size
  let sizeModifier = 10; // size variation
  let baseDuration = 10; // fall speed, increase to slow down
  let durationModifier = 10; // fall speed variation
  let lowestOpacity = 0.1; // 0 transparent, 1 opaque

  let container = document.getElementById('snow');
  let containerHeight = container.offsetHeight;

  let i = 0;
  while (i < amount) {
    let flake = document.createElement('i');
    container.appendChild(flake);

    let size = baseSize + Math.random() * sizeModifier;
    let posX = Math.random() * window.innerWidth;
    let posY = -Math.random() * containerHeight;
    let delay = Math.random() * -20;
    let duration = Math.random() * durationModifier + baseDuration;

    flake.style.width = size + 'px';
    flake.style.height = size + 'px';
    flake.style.left = posX + 'px';
    flake.style.top = posY + 'px';
    flake.style.animationDelay = delay + 's';
    flake.style.animationDuration = duration + 's';
    flake.style.opacity = Math.random() * (1 - lowestOpacity) + lowestOpacity;

    i++;
  }
}

snow();

  