var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

/*Put all on screen*/
router.get('/', (req, res) => {
  connect.query('SELECT movie_id, movie_title, movie_rating, movie_thumbnail FROM tbl_movies WHERE movie_kids="yes"', (err, movResult) => {
    connect.query('SELECT music_id, music_name, music_artist, music_thumbnail, music_link FROM tbl_music WHERE music_kids="yes"', (err, musResult) => {
      connect.query('SELECT tv_id, tv_name, tv_rating, tv_thumbnail FROM tbl_tv WHERE tv_kids="yes"', (err, tvResult) => {
        if (err) {
          throw err,
          console.log(err);
        } else {
            res.render('kids_home', {
              title: 'Fran\'s Greatest Hits',
              movieData : movResult,
              musicData : musResult,
              tvData : tvResult,
              css : 'kids.css',
              js : ['filter.js','main.js']
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

  connect.query(`SELECT movie_title, movie_rating, movie_thumbnail FROM tbl_movies WHERE movie_genre="${req.params.id}" AND movie_kids="yes"`, (err, result) => {
    if (err) {
      throw err;
      console.log(err);
    } else {
      res.render('kids_home', {
        movieData : result
      });
      console.log(result);
    }
  });
});



module.exports = router;
