FROM container-registry.oracle.com/database/free:latest
# FROM ddmitry80/apex_ords:0.01

ENV ORACLE_PWD=E

COPY unattended_apex_install_23c.sh /home/oracle
COPY 00_start_apex_ords_installer.sh /opt/oracle/scripts/startup

RUN curl -o apex-latest.zip https://download.oracle.com/otn_software/apex/apex-latest.zip && \
    unzip -q apex-latest.zip && \
    rm apex-latest.zip

USER root 
RUN dnf update -y && \
    dnf install sudo -y && \
    dnf install nano mc -y && \
    dnf install java-17-openjdk -y && \
    dnf clean packages

RUN echo "Defaults !lecture" | sudo tee -a /etc/sudoers && \
    echo "oracle ALL=(ALL) NOPASSWD: ALL" | sudo tee -a /etc/sudoers

RUN mkdir /etc/ords && \
    mkdir /etc/ords/config && \
    mkdir /home/oracle/logs && \
    chmod -R 777 /etc/ords

RUN yum-config-manager --add-repo=http://yum.oracle.com/repo/OracleLinux/OL8/oracle/software/x86_64 && \
    dnf install ords -y && \
    dnf clean packages

USER oracle
