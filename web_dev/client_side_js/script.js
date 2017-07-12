console.log("Hi there");
var h1 = document.getElementById("welcome");

function changeColor(event) {
  if (event.target.style.color == 'rgb(180, 0, 120)') {
    event.target.style.color = 'rgb(220, 130, 10)';
  } else if (event.target.style.color == 'rgb(220, 130, 10)') {
    event.target.style.color = 'rgb(180, 0, 120)';
  }
}

h1.addEventListener("click", changeColor);