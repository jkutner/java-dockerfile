# Java with a Dockerfile

This app will fail to boot because of the `$PORT` in the `CMD`.

```
$ docker build .
$ docker tag <id> registry.heroku.com/<app>/web
$ docker push registry.heroku.com/<app>/web
$ heroku container:release web
```
