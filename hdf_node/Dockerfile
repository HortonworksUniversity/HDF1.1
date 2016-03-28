FROM hwxu/ambari_2.2_node

MAINTAINER Rich Raposa, rich@hortonworks.com

RUN mkdir -p /root/Downloads

RUN wget http://public-repo-1.hortonworks.com/HDF/1.1.2.1/HDF-1.1.2.1-34.tar.gz -O /root/Downloads/HDF.tar.gz
RUN tar -xvf /root/HDF.tar.gz

RUN wget https://download.jetbrains.com/idea/ideaIC-2016.1.tar.gz -O /root/Downloads/idea.tar.gz
RUN tar -xvf /root/idea.tar.gz

RUN wget http://plugins.jetbrains.com/plugin/download?pr=idea&updateId=24700 -0 /root/Downloads/scalaplugin.zip

ENTRYPOINT ["/root/scripts/startup.sh"]

