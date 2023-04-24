CHANGE MASTER TO MASTER_HOST='xxx.xxx.xx.xx', MASTER_USER='replica_user', MASTER_PASSWORD='replica_user_password', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=123;

START SLAVE;