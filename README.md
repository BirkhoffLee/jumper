# BirkhoffLee/jumper [![](https://img.shields.io/badge/Docker%20Hub-BirkhoffLee%2Fjumper-blue.svg)](https://hub.docker.com/r/birkhofflee/jumper/) [![](https://images.microbadger.com/badges/version/birkhofflee/jumper.svg)](https://microbadger.com/images/birkhofflee/jumper) [![](https://images.microbadger.com/badges/image/birkhofflee/jumper.svg)](https://microbadger.com/images/birkhofflee/jumper) ![Docker Stars](https://img.shields.io/docker/stars/birkhofflee/jumper.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/birkhofflee/jumper.svg) ![Docker Automated build](https://img.shields.io/docker/automated/birkhofflee/jumper.svg)
A light, useful and fast Docker image for making a domain (or multiple domains!) redirect to an URL.

# Usage
Simply run the following:
```
$ docker run -itd -e "jumper_destination_url=DESTINATION_URL" birkhofflee/jumper
```

Or if you are using a Docker GUI (like shipyard), just make sure you have set the environment variable **jumper_destination_url** to your destination url.

In addition, if you wish Jumper to forward paths (like "http://from.birkhoff.me/abcd" to "http://dest.birkhoff.me/abcd"), there's another environment variable for it: **jumper_forward_path**. Set it to anything if you want to forward paths -- or just ignore it.

# Contributing
Only one rule: **Test before submitting a pull request**.

# Security Reports
Please contact [admin@birkhoff.me](mailto:admin@birkhoff.me), thank you very much.

# License
See [LICENSE](LICENSE).
