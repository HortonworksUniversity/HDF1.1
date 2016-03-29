FROM hwxu/ambari_2.2_node

MAINTAINER Rich Raposa, rich@hortonworks.com

# RUN wget http://public-repo-1.hortonworks.com/HDF/1.1.2.1/HDF-1.1.2.1-34.tar.gz -O /root/HDF.tar.gz
RUN mkdir -p /root/hdf && curl http://public-repo-1.hortonworks.com/HDF/1.1.2.1/HDF-1.1.2.1-34.tar.gz | tar -C /root/hdf -zxf


RUN yum -y update && yum -y install java-1.8.0-openjdk

# Add .sh file to /etc/profile.d/ and do the exports there - then I can do this all in one Docker command

RUN echo "export JAVA_HOME=/etc/alternatives/jre_1.8.0" >> /etc/bashrc
RUN echo "export PATH=/etc/alternatives/jre_1.8.0/bin:\$PATH" >> /etc/bashrc

RUN echo "export NIFI_HOME=/root/hdf/HDF-1.1.2.1/nifi" >> /etc/bashrc


# docker run --privileged=true -d --dns 8.8.8.8 -p 8080:8080  --name node1 -h node1 -i -t hwxu/hdf_node


ENTRYPOINT ["/root/scripts/startup.sh"]

