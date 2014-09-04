# Reset to null
. /root/.my.cnf
mysqladmin -u root -p$password password "root"

wget https://raw.github.com/quangpham/do-server-scripts/master/mysql/my.conf
chmod 644 my.conf
mv my.conf /etc/mysql/my.conf

service mysql stop
service mysql start
