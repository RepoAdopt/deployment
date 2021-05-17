BASE_URL=http://$MACHINE_URL:8101
SERVICE_NAME=nginx
UPSTREAM_NAME=$SERVICE_NAME\_upstream

sleep 10

curl -i -X POST $BASE_URL/services --data name=$SERVICE_NAME --data url=$BASE_URL

curl -i -X POST $BASE_URL/upstreams --data name=$UPSTREAM_NAME

curl -i -X POST $BASE_URL/upstreams/$UPSTREAM_NAME/targets --data target=$CONTAINER_URL

curl -i -X PATCH $BASE_URL/services/$SERVICE_NAME --data host=$UPSTREAM_NAME

curl -i -X POST $BASE_URL/services/$SERVICE_NAME/routes --data name=$SERVICE_NAME --data paths[]=/* --data methods=GET
