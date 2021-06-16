docker build . -t gt-couch-connect$1  -f Dockerfile
docker tag gt-couch-connect$1 172.27.44.198:5000/gt-couch-connect:$1.0
docker push 172.27.44.198:5000/gt-couch-connect:$1.0
