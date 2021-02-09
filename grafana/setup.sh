docker run \
  --network host \
  --name=grafana \
  --restart always \
  -e GF_AUTH_ANONYMOUS_ENABLED=true \
  -e GF_AUTH_ANONYMOUS_ORG_ROLE=Admin \
  -v grafana-storage:/var/lib/grafana\
  grafana/grafana