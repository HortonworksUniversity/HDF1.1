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



3. `/scripts`: contains shell scripts which can be launched within the Ambari Server container to start a blueprints install, check the status of an existing install, or export a blueprint from a currently running cluster. Note: by default, `install_cluster.sh` will be automatically executed with the specified blueprint when the Ambari Server container is bootstrapped.

4. `/start-scripts/05-start-ambari.sh`: bootstrap script that only executes in the Ambari Server container. Makes a few config changes to the Ambari Server, starts Apache for the local repo mirror, and starts Ambari Server and Agent. 

5. `/start-scripts/10-prepare-blueprints.sh`: bootstrap script that waits for Ambari Server to start, then initiates the blueprints based cluster install using the blueprint provided in the cluster start script described above

- `/dockerfiles/ambari_2.2_agent_node`:

1. `/start-scripts/05-start-ambari.sh`: bootstrap script that starts the Ambari Agent process