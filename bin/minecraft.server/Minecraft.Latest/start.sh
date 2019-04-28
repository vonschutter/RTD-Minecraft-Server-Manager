#/bin/bash
pushd $(dirname "$0")

java -Xmx2048M -Xms2048M -jar $(dirname "$0")/server.jar noggui broadcast
#~/bin/jre1.8.0_73/bin/java -Xmx1024M -Xms1024M -jar $(dirname "$0")/server.jar noggui broadcast 
