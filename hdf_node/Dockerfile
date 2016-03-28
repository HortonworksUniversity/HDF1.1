FROM hwxu/ambari_2.2_node

MAINTAINER Rich Raposa, rich@hortonworks.com

RUN mkdir -p /root/Downloads
RUN wget http://public-repo-1.hortonworks.com/HDF/1.1.2.1/HDF-1.1.2.1-34.tar.gz -O /root/Downloads/HDF.tar.gz
RUN mkdir -p /root/hdf
RUN tar -xvf /root/Downloads/HDF.tar.gz -C /root/hdf

RUN /root/hdf/HDF-1.1.2.1/nifi/bin/


# docker run --privileged=true -d --dns 8.8.8.8 -p 8080:8080 -p 8440:8440 -p 8441:8441 -p 50070:50070 -p 8020:8020  --name node1 -h node1 -i -t hwxu/ambari_2.2_server_node
ENTRYPOINT ["/root/scripts/startup.sh"]

