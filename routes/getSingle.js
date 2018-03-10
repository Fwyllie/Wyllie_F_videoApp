var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

/*Watch movie page*/
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  connect.query(`SELECT * FROM tbl_movies WHERE movie_id=${req.params.id}`, (err, result) => {
    connect.query(`SELECT * FROM tbl_movies m, tbl_reviews r, tbl_mov_rev mr WHERE m.movie_id = mr.movie_id AND r.review_id = mr.review_id AND m.movie_id = ${req.params.id}`, (err, revResult) => {
    if (err) {
      throw err,
      console.log(err);
    } else {
      console.log(result);
      res.render('watch',{
        title: 'Fran\'s Greatest Hits',
        singleData : result[0],
        reviewData : revResult,
        css : 'main.css'
      });
    }
  });
  });
});

module.exports = router;
