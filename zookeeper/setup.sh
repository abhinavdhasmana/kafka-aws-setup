#update /etc/hosts

mkdir -p /data/zookeeper
chown -R 1001:1001 /data/zookeeper

echo 2 >> /data/zookeeper/myid

mkdir zookeeper && cd $_
vi zoo.cfg
# Copy the content of zoo.cfg

docker run --name zookeeper \
-v /home/ubuntu/zookeeper/zoo.cfg:/opt/bitnami/zookeeper/conf/zoo.cfg  \
-v /data/zookeeper:/data/zookeeper \
--restart always \
--network host \
-e ALLOW_ANONYMOUS_LOGIN=true \
bitnami/zookeeper:latest