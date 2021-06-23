FROM jenkins/jenkins:alpine

#Setting Environment Variables 
#Disabling default Setup Wizard

ENV JENKINS_URL="https://jenkins_casc:8080"

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

COPY casc var/jenkins_home/ref

#Pointing Plugin to the folder to casc yaml folders
ENV CASC_JENKINS_CONFIG=var/jenkins_home

COPY casc/plugins.txt usr/share/jenkins/plugins.txt

RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt

# USER root

# RUN chown -R root:root /var/jenkins_home/ref

# ENTRYPOINT [ "var/jenkins_home/ref/execute.sh" ]