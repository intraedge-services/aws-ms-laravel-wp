CREATE DATABASE IF NOT EXISTS wordpress CHARACTER SET utf8 COLLATE utf8_general_ci;
CREATE DATABASE IF NOT EXISTS laraveldb CHARACTER SET utf8 COLLATE utf8_general_ci;
GRANT ALL on wordpress.* to 'wordpress'@'%' IDENTIFIED BY 'changeit';
GRANT ALL on laraveldb.* to 'laravel'@'%' IDENTIFIED BY 'changeit';
