var express = require('express');
var connect = require('../utils/sqlConnect');
var router = express.Router();
var config = require('../config');

/*Watch movie page*/
router.get('/:id', (req, res) => {
  console.log(req.params.id);
  connect.query(`SELECT * FROM tbl_tv WHERE tv_id=${req.params.id}`, (err, result) => {
    connect.query(`SELECT * FROM tbl_tv t, tbl_reviews r, tbl_tv_rev tr WHERE t.tv_id = tr.tv_id AND r.review_id = tr.review_id AND t.tv_id = ${req.params.id}`, (err, revResult) => {
    if (err) {
      throw err,
      console.log(err);
    } else {
      console.log(result);
      res.render('watchTv',{
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
