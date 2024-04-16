FROM container-registry.oracle.com/database/free:latest
# FROM ddmitry80/apex_ords:0.01

COPY unattended_apex_install_23c.sh /home/oracle/
RUN /home/oracle/unattended_apex_install_23c.sh

# RUN /home/oracle/unattended_apex_install_23c.sh > /home/oracle/unattended_apex_install_23c.log

COPY 00_unattended_apex_install_23c.sh /opt/oracle/scripts/startup/
USER root
RUN chmod +x /opt/oracle/scripts/startup/00_unattended_apex_install_23c.sh
USER oracle
