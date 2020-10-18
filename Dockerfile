FROM centos:7
LABEL maintainer="anujtomar1890@gmail.com"
LABEL build_date="18-10-2020"
RUN yum install wget -y
RUN yum install sudo -y
RUN sudo yum install java-1.8.0-openjdk-devel -y
RUN curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
RUN sudo rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key
RUN sudo yum install jenkins -y
RUN echo "jenkins ALL={ALL} NOPASSWD:ALL" >> /etc/sudoers
CMD java -jar /usr/lib/jenkins/jenkins.war
