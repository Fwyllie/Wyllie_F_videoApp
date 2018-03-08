var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

/*Watch movie page*/
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  connect.query(`SELECT * FROM tbl_movies WHERE movie_id=${req.params.id}`, (err, result) => {
    if (err) {
      throw err,
      console.log(err);
    } else {
      console.log(result);
      res.render('watch', {
        title: 'watch page',
        movieData : result,
        css : 'main.css'
      });
    }
  });

});

module.exports = router;
