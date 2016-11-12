port    = 1827
express = require 'express'
app     = express()
targetURL = ""
forwardPath = if process.env.jumper_forward_path then true else false

if !process.env.jumper_destination_url
    console.error "Environment variable not set: jumper_destination_url"
    process.exit -1
else
    targetURL = process.env.jumper_destination_url

if targetURL.slice(-1) == "/" || targetURL.slice(-1) == "\\"
    targetURL = targetURL.slice(0, -1)

app.all '*', (req, res, next) ->
    path = if forwardPath then req.path else ""
    res.redirect 301, targetURL + path
    next()

app.listen port, ->
    console.log "Server is listening on port #{port}, set to be jumping to #{targetURL}"
