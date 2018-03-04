(() => {

var movie = document.querySelector("#filter1"),
    tv = document.querySelector("#filter2"),
    music = document.querySelector("#filter3"),
    movieFs = document.querySelector(".movieFilter"),
    tvFs = document.querySelector(".tvFilter"),
    musicFs = document.querySelector(".musicFilter"),
    clear = document.querySelector("#clearF");

function showMovF(){
  movieFs.style.display="block";
  tvFs.style.display = "none";
  musicFs.style.display = "none";
}
function showtvF(){
  tvFs.style.display="block";
  movieFs.style.display = "none";
  musicFs.style.display = "none";
}
function showmusF(){
  musicFs.style.display="block";
  tvFs.style.display = "none";
  movieFs.style.display = "none";
}
function clearFilter(){
  musicFs.style.display="none";
  tvFs.style.display = "none";
  movieFs.style.display = "none";
}

clear.addEventListener('click', clearFilter, false);
movie.addEventListener('click', showMovF, false);
tv.addEventListener('click', showtvF, false);
music.addEventListener('click', showmusF, false);
})();
