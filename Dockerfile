FROM oraclelinux:8.4 
LABEL name=Neha
RUN dnf install java-1.8.0-openjdk.x86_64 java-1.8.0-openjdk-devel.x86_64 maven git  -y 
RUN mkdir /neha-project
WORKDIR /neha-project
RUN git clone https://github.com/reddy98neha/java-springboot-job.git
WORKDIR java-springboot
RUN mvn clean package
