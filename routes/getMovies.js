var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();

/* GET home page. */
router.get('/', (req, res) => {
  connect.query('SELECT movie_title, movie_rating, movie_thumbnail FROM tbl_movies', (err, result) => {
    if (err) {
      throw err,
      console.log(err);
    } else {
      console.log(result);

      res.render('parents_home', {
        title: 'Movies',
        movieData : result
      });
    }
  });

});

module.exports = router;
