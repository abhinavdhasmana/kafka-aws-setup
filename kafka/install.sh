#update /etc/hosts

mkdir -p /data/kafka
chown -R 1001:1001 /data/kafka

mkdir -p kafka/config && cd $_
wget https://repo1.maven.org/maven2/io/prometheus/jmx/jmx_prometheus_javaagent/0.15.0/jmx_prometheus_javaagent-0.15.0.jar
wget https://raw.githubusercontent.com/prometheus/jmx_exporter/master/example_configs/kafka-2_0_0.yml
cd ..
vi kafka/server.properties


docker run --name kafka \
--network host \
--restart always \
-e ALLOW_PLAINTEXT_LISTENER=yes \
-e KAFKA_OPTS="-javaagent:/opt/bitnami/kafka/conf/jmx_prometheus_javaagent-0.15.0.jar=8080:/opt/bitnami/kafka/conf/kafka-2_0_0.yml" \
-v /home/ubuntu/kafka/server.properties:/bitnami/kafka/config/server.properties \
-v /data/kafka:/data/kafka \
-v /home/ubuntu/kafka/config:/opt/bitnami/kafka/conf \
bitnami/kafka:latest