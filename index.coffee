port    = 1827
express = require 'express'
app     = express()
targetURL = ""

if !process.env.jumper_destination_url
    console.error "Environment variable not set: jumper_destination_url"
    process.exit -1
else
    targetURL = process.env.jumper_destination_url

app.all '*', (req, res, next) ->
    res.redirect targetURL
    next()

app.listen port, ->
    console.log "Server is listening on port #{port}, set to be jumping to #{targetURL}"
