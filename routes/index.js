var express = require('express');
var router = express.Router();
var config = require('../config');

router.get('/', (req, res) => {
      res.render('home', {
        title: 'Fran\'s Greatest Hits',
        css : 'main.css'
      });
});

module.exports = router;
