port    = 1827
express = require 'express'
app     = express()

app.all '*', (req, res, next) ->
    res.redirect 'https://blog.birkhoff.me'
    next()

app.listen port, ->
  console.log 'Server listening on port #{port}!'
