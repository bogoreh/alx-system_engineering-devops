-- permission to check the primary/replica status of your databases
CREATE USER 'holberton_user'@'localhost' IDENTIFIED BY 'projectcorrection280hbtn';
GRANT REPLICATION CLIENT ON *.* to 'holberton_user'@'localhost';

-- permissions to replicate your primary MySQL server
CREATE USER 'replica_user'@'%' IDENTIFIED BY 'mypassword';
GRANT REPLICATION SLAVE ON *.* to 'replica_user'@'%';
