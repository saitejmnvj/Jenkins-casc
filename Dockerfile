FROM jenkins/jenkins:alpine

#Setting Environment Variables 
#Disabling default Setup Wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
#Pointing Plugin to the folder to casc yaml folders
ENV CASC_JENKINS_CONFIG=/home/casc

COPY plugins.txt usr/share/jenkins/plugins.txt
COPY jenkins.yaml usr/local/jenkins.yaml
