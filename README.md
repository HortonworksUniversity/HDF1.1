HDF 1.1
===========
Dockerfiles for creating an install of HDF. It is an extension of the Ambari 2.2 repo and requires
the hwxu/ambari_2.2_node image


1. Parent image:

```
cd hdf_node
docker build -t hwxu/hdf_node .
```

Launching a Cluster
------------------------



Supporting Files/Scripts
------------------------



3. `/scripts`: contains shell scripts which can be launched within the container 

4. `/start-scripts/00-start-nifi.sh`: runs nifi.sh start

5. `/start-scripts/99-bash.sh`: bash -l
