FROM centos:latest
WORKDIR /app
RUN yum istall -y wget sudo tar
RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel90-7.0.14.tgz
RUN tar -zxvf mongodb-linux-x86_64-rhel90-7.0.14.tgz
cp -r  mongodb-linux-x86_64-rhel90-7.0.14/bin/* /usr/local/bin/
EXPOSE 27017
CMD ["mongod"]


#Explanation of the Dockerfile:
#FROM centos:latest: Uses the latest CentOS image as the base for the container.
#WORKDIR /app: Sets the working directory to /app inside the container.
#RUN yum install -y wget sudo tar: Installs necessary packages (wget, sudo, tar) required to download and extract MongoDB.
#RUN wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel90-7.0.14.tgz: Downloads the MongoDB tarball for CentOS.
#RUN tar -zxvf mongodb-linux-x86_64-rhel90-7.0.14.tgz: Extracts the MongoDB tarball.
#RUN cp -r mongodb-linux-x86_64-rhel90-7.0.14/bin/* /usr/local/bin/: Copies the MongoDB binaries to /usr/local/bin for easy execution.
#EXPOSE 27017: Exposes port 27017, which is MongoDB's default port.
#CMD ["mongod"]: Specifies the default command to start the MongoDB server when the container runs.
EOF
