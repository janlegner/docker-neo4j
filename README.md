# neo4j

The purpose of this repo is to provide an easy way to install Neo4J graph DB locally.

## Scripts

To build a docker image:
```
$ ./build.sh
```

To run a docker container:
```
$ ./run.sh
```

To dump default neo4j config:
```
$ ./dump-conf.sh
```

To connect to the running container:
```
$ ./connect.sh
```

## Directories

- `conf`: Contains dumped config
- `data`: Contains persisted DB files
- `logs`: Contains Neo4J logs
- `plugins`: Contains plugins we use
