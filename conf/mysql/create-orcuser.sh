#!/bin/bash

mysql -hmysql-master -u'root' -p'master_root_password' -e"show global variables" >> /tmp/sampleoutput.log
mysql -hmysql-master -u'root' -p'master_root_password' -e"CREATE USER 'orchestrator'@'%' IDENTIFIED BY 'orchestrator'; GRANT SUPER, PROCESS, REPLICATION SLAVE, RELOAD ON *.* TO 'orchestrator'@'%';GRANT SELECT ON mysql.slave_master_info TO 'orchestrator'@'%';" > /tmp/sampleoutput.log