# BirkhoffLee/jumper [![](https://images.microbadger.com/badges/image/birkhofflee/jumper.svg)](https://microbadger.com/images/birkhofflee/jumper)
A light, useful and fast Docker image for making a domain (or multiple domains!) redirect to an URL.

# Usage
Simply run the following:
```
$ docker run -itd -e "jumper_destination_url=DESTINATION_URL" birkhofflee/jumper
```

Or if you are using a Docker GUI (like shipyard), just make sure you have set the environment variable **jumper_destination_url** to your destination url.
