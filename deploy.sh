#/bin/bash
/usr/bin/docker exec node-ex rm -r src
/usr/bin/docker exec node-ex mkdir src
/usr/bin/docker cp ./ node-ex:/src/