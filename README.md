## NC Request Catcher

#### An extremely simple request catcher using netcat

#### Build docker image

```
# Clone the repo
$ git clone github.com/techcoil/nc-request-catcher.git

# Build the image
$ docker build -t nc-request-catcher .
```

#### Run the image

```
$ docker run -p 3000:3000 nc-request-catcher
```

#### Send requests to the server

```
$ curl -XPOST -d "Some data" -H "Content-type: text/plain" http://localhost:3000/demo/example
```
