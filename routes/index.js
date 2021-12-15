const router = require('express').Router()

router.use('/api', require('./movieRoutes.js'))

module.exports = router
