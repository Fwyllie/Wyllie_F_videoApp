var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

/*Put all on screen*/
router.get('/', (req, res) => {
  connect.query('SELECT movie_id, movie_title, movie_rating, movie_thumbnail FROM tbl_movies', (err, movResult) => {
    connect.query('SELECT music_id, music_name, music_artist, music_thumbnail, music_link FROM tbl_music', (err, musResult) => {
      connect.query('SELECT tv_id, tv_name, tv_rating, tv_thumbnail FROM tbl_tv', (err, tvResult) => {
        if (err) {
          throw err,
          console.log(err);
        } else {
            res.render('parents_home', {
              title: 'Flashback!',
              movieData : movResult,
              musicData : musResult,
              tvData : tvResult,
              css : 'main.css'
          });
        }
      });
    });
  });
});

/*FILTER*/
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  console.log('hit an api route with params FILTER');

  connect.query(`SELECT movie_title, movie_rating, movie_thumbnail FROM tbl_movies WHERE movie_genre="${req.params.id}"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      res.render(toRender, {
        movieData : result
      });
      console.log(result);
    }
  });
});



module.exports = router;
