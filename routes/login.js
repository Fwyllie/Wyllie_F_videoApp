var express = require('express');
var router = express.Router();
var config = require('../config');

/* GET home page. */
router.get('/', function(req, res) {
  res.render('login', {
    css : 'main.css'
  });
});

module.exports = router;
