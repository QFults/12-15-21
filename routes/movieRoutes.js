const router = require('express').Router()
const { Movie } = require('../models')

// GET all movies
router.get('/movies', (req, res) => Movie.findAll()
  .then(movies => res.json(movies))
  .catch(err => console.log(err)))

// POST one movie
router.post('/movies', (req, res) => Movie.create(req.body)
  .then(movie => res.json(movie))
  .catch(err => console.log(err)))

// PUT one movie
router.put('/movies/:id', ({ params: { id }, body }, res) => Movie.update(body, { where: { id } })
  .then(() => res.sendStatus(200))
  .catch(err => console.log(err)))

// DELETE one movie
router.delete('/movies/:id', ({ params: { id } }, res) => Movie.destroy({ where: { id } })
  .then(() => res.sendStatus(200))
  .catch(err => console.log(err)))

module.exports = router
