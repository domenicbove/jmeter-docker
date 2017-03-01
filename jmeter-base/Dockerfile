FROM rhel:7.2
MAINTAINER domenicbove

# Need to install Yum Base Packages, and Java
RUN yum repolist > /dev/null && \
    yum-config-manager --enable rhel-7-server-optional-rpms && \
    yum clean all && \
    INSTALL_PKGS="tar \
		unzip \
    wget \
    which \
    yum-utils \
    java-1.8.0-openjdk-devel" && \
    yum install -y --setopt=tsflags=nodocs install $INSTALL_PKGS && \
    rpm -V $INSTALL_PKGS && \
    yum clean all


# Install wger & JRE
# RUN apt-get clean && \
# 	apt-get update && \
# 	apt-get -qy install \
# 				wget \
# 				default-jre-headless \
# 				telnet \
# 				iputils-ping \
# 				unzip

# Install jmeter
RUN   mkdir /jmeter \
      && cd /jmeter/ \
      && wget https://archive.apache.org/dist/jmeter/binaries/apache-jmeter-2.13.tgz \
      && tar -xzf apache-jmeter-2.13.tgz \
      && rm apache-jmeter-2.13.tgz \
	  && mkdir /jmeter-plugins \
	  && cd /jmeter-plugins/ \
	  && wget https://jmeter-plugins.org/downloads/file/JMeterPlugins-ExtrasLibs-1.4.0.zip \
	  && unzip -o JMeterPlugins-ExtrasLibs-1.4.0.zip -d /jmeter/apache-jmeter-2.13/

# Set Jmeter Home
ENV JMETER_HOME /jmeter/apache-jmeter-2.13/

# Add Jmeter to the Path
ENV PATH $JMETER_HOME/bin:$PATH
