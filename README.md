# BirkhoffLee/jumper [![](https://img.shields.io/badge/Docker%20Hub-BirkhoffLee%2Fjumper-blue.svg)](https://hub.docker.com/r/birkhofflee/jumper/) [![](https://images.microbadger.com/badges/image/birkhofflee/jumper.svg)](https://microbadger.com/images/birkhofflee/jumper) ![Docker Stars](https://img.shields.io/docker/stars/birkhofflee/jumper.svg) ![Docker Pulls](https://img.shields.io/docker/pulls/birkhofflee/jumper.svg)
A light, useful and fast Docker image for making a domain (or multiple domains!) redirect to an URL.

# Usage
I usually run a website on Docker with [jwilder/nginx-proxy](https://github.com/jwilder/nginx-proxy), and I recommend you to use it too. So simply run the following to launch Jumper:
```
$ docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy
$ docker run -itd -P -e "VIRTUAL_HOST=DOMAIN_1(,DOMAIN_2,...)" -e "jumper_destination_url=DESTINATION_URL" birkhofflee/jumper
```

In addition, if you wish Jumper to forward paths (like "http://from.birkhoff.me/abcd" to "http://dest.birkhoff.me/abcd"), add `-e "jumper_forward_path=true"` after your `-e "jumper_destination_url=DESTINATION_URL"`.

For wildcard hosts please check this out: https://github.com/jwilder/nginx-proxy/blob/master/README.md#wildcard-hosts

# Contributing
Only one rule: **Test before submitting a pull request**.

# Security Reports
Please contact [admin@birkhoff.me](mailto:admin@birkhoff.me), thank you very much.

# License
See [LICENSE](LICENSE).
