(() => {
  let filterButtons = document.querySelectorAll('.secF');

  function fetchData() {
    let url = "api/" + this.id;

    fetch(url)
    .then((resp) => resp.json())
    .then((data) => {
      console.log(data);
    })
    .catch(function(error) {
      console.log(error);
    });
  }
  
  filterButtons.forEach(button => button.addEventListener('click', fetchData));
})();
