docker build -t bgp-watcher -f Dockerfile . 
docker stop bgp-watcher && docker rm bgp-watcher 
docker run -dit --name bgp-watcher bgp-watcher && docker exec -it bgp-watcher sh
