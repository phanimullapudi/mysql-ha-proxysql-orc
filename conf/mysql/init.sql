CREATE USER 'orchestrator'@'%' IDENTIFIED WITH mysql_native_password BY 'orchestrator';
GRANT SUPER, PROCESS, REPLICATION SLAVE, RELOAD ON *.* TO 'orchestrator'@'%';
GRANT SELECT ON mysql.slave_master_info TO 'orchestrator'@'%';
CREATE USER 'monitor'@'%' IDENTIFIED WITH mysql_native_password BY 'monitor';
GRANT USAGE, REPLICATION CLIENT ON *.* TO 'monitor'@'%';
CREATE USER 'app_user'@'%' IDENTIFIED WITH mysql_native_password BY 'app_password';
GRANT ALL ON *.* TO 'app_user'@'%';
flush privileges;
