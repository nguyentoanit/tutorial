# HOW TO INSTALL JENKINS ON CENTOS 6.8 (docker)
## OVERVIEW
This article will guide you through the process of installing Jenkins on a CentOS 6.8 server (docker container).

## PREPARATION
Before proceeding, you must have:
1. Set up docker
2. Expose port 8080 on container when you build container:

```
docker run -itd --name <container-name> -p 80:80 -p 443:443 -p 8000-8080:8000-8080 centos:6.8
```

3. Execute an interactive ```bash``` shell on the container.

```
docker exec -it <container-name> bash
```

## UPDATE YOUR CENTOS SERVER
One of the Linux system administrator's best practices is keeping a system up to date. Update packages and install sudo package:
```
yum update
yum install sudo -y 
```

## INSTALL JAVA
Before you can install Jenkins, you need to setup a Java on your system. To install the Open Java Development Kit (OpenJDK) run the following:

```
sudo yum install -y java
```

After the installation, you can confirm it by running the following command:

```
java -version
```

This command will tell you about the Java runtime environment that you have installed:

```
openjdk version "1.8.0_144"
openJDK Runtime Environment (build 1.8.0_144-b01)
openJDK 64-Bit Server VM (build 25.144-b01, mixed mode)
```

## INSTALL JENKINS
Try command: ```service```
If system shows: 

```	
bash: service: command not found
```

Run this command to install service package:
```
sudo yum install -y system-config-services
```
Use the official YUM repository to install the latest stable version of Jenkins. Add the Jenkins repository to the yum repos, and install Jenkins from here.

```
sudo yum install -y wget
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install -y jenkins
```

Restart the Jenkins service:

```
service jenkins restart
```
Now, test Jenkins by visiting the following address from your web browser: ```http://<your-server-ip>:8080```

If the browser shows like this, the installation was success:

## REFERENCE
- https://www.vultr.com/docs/how-to-install-jenkins-on-centos-7
- https://wiki.jenkins.io/display/JENKINS/Installing+Jenkins+on+Red+Hat+distributions
