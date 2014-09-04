sudo apt-get install postgresql postgresql-contrib phppgadmin -y

wget https://raw.github.com/quangpham/do-server-scripts/master/postgresql/phppgadmin
chmod 664 phppgadmin
mv phppgadmin /etc/apache2/conf.d/phppgadmin

wget https://raw.github.com/quangpham/do-server-scripts/master/postgresql/000-default
chmod 777 000-default
mv 000-default /etc/apache2/sites-enabled/000-default

wget https://raw.github.com/quangpham/do-server-scripts/master/postgresql/.pg_htpasswd
mv .pg_htpasswd /root/

sudo service apache2 restart


#https://gist.github.com/jourdein/5412399

# * No PostgreSQL clusters exist; see "man pg_createcluster"
# STEP 2.1: CREATES A NEW POSTGRESQL SERVER CLUSTER
# http://serverfault.com/a/234993
# pg_lsclusters
# pg_createcluster 9.1 main --start

# su – postgres
# createuser --pwprompt
# createdb events

#http://www.cyberciti.biz/tips/postgres-allow-remote-access-tcp-connection.html