FROM hwxu/ambari_2.2_node

MAINTAINER Rich Raposa, rich@hortonworks.com

RUN curl http://public-repo-1.hortonworks.com/HDF/1.1.2.1/HDF-1.1.2.1-34.tar.gz | tar zx -C /root/ 

RUN yum -y update && yum -y install java-1.8.0-openjdk

ADD scripts/ /root/scripts/
ADD start-scripts/ /root/start-scripts/
RUN cp /root/scripts/nifi.sh /etc/profile.d/

# docker run --privileged=true -d --dns 8.8.8.8 -p 8080:8080  --name node1 -h node1 -i -t hwxu/hdf_node


ENTRYPOINT ["/root/scripts/startup.sh"]

