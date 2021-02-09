mkdir prometheus && cd $_

# copy contents of prometheus.yml

docker run \
--name=prometheus \
--network host \
--restart always \
-v /home/ubuntu/prometheus:/etc/prometheus \
prom/prometheus