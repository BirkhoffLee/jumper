# BirkhoffLee/redirecter
A docker image for redirecting from a (list of) domain(s) to an another URL.

# Usage
You will need Docker installed on your server in order to use this image.  

Let's say I'm making `www.birkhoff.me` and `birkhoff.me` redirected to `https://blog.birkhoff.me`, so the command to launch this image would be like this:
```
$ docker run -itd -e VIRTUAL_HOST=www.birkhoff.me,birkhoff.me -e "redirectTo=https://blog.birkhoff.me" birkhofflee/blogredirect
```

So the usage is:
```
$ docker run -itd -e VIRTUAL_HOST=domain_1(,domain_2...) -e "redirectTo=destination_URL" birkhofflee/blogredirect
```

# Why "blogredirect"?
This repo was used for my personal use for redirecting `www.birkhoff.me` and `birkhoff.me` to `https://blog.birkhoff.me`, so the name was "blogredirect".
