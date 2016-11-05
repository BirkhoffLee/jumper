# BirkhoffLee/jumper [![](https://images.microbadger.com/badges/image/birkhofflee/blogredirect.svg)](https://microbadger.com/images/birkhofflee/blogredirect)
A docker image for redirecting from a (list of) domain(s) to an another URL.

# Usage
Simply run the following:
```
$ docker run -itd -e "redirectTo=DESTINATION_URL" birkhofflee/jumper
```
