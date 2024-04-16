FROM container-registry.oracle.com/database/free:latest

COPY unattended_apex_install_23c.sh /home/oracle/
# COPY cp 00_start_apex_ords_installer.sh /opt/oracle/scripts/startup/

RUN /home/oracle/unattended_apex_install_23c.sh > /home/oracle/unattended_apex_install_23c.log

