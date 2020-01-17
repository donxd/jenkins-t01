docker exec node-ex rm -r src
docker exec node-ex mkdir src
docker cp ./ node-ex:/src/