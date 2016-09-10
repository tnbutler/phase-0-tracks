function hidePhoto(event) {

  console.log(event);
  event.target.hidden = true;
}

var photo = document.getElementById("lizard-photo");
photo.addEventListener("click", hidePhoto);