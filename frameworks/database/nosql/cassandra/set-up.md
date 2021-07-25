# Set up

Follow [https://hub.docker.com/r/bitnami/cassandra/](https://hub.docker.com/r/bitnami/cassandra/)

Use docker compose with bridge network

2. Once server started at 9042, run cql cli with docker to connecting to it

docker exec -it cassandra-docker\_cas\_server\_1 cqlsh --username cassandra --password cassandra



