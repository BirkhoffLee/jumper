port    = 1827
express = require 'express'
app     = express()
redirectTo = ""

if !process.env.redirectTo
    process.exit -1
else
    redirectTo = process.env.redirectTo

app.all '*', (req, res, next) ->
    res.redirect redirectTo
    next()

app.listen port, ->
  console.log "Server is listening on port #{port}, set to be redirected to #{redirectTo}"
