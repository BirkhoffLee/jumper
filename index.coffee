express = require 'express'
app = express()

app.all '*', (req, res, next) ->
    res.redirect 'https://blog.birkhoff.me'
    next()