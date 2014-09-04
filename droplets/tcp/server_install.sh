# Init
\curl -sSL https://raw.github.com/quangpham/do-server-scripts/master/init_server.sh | bash

# Mysql settings
\curl -sSL https://raw.github.com/quangpham/do-server-scripts/master/mysql/enable_remote_access.sh | bash

# Install solr
\curl -sSL https://raw.github.com/quangpham/do-server-scripts/master/solr/install_solr.sh | bash

# Clone project
# git clone git@bitbucket.org:quangpham/tcp.backend.git
# cd tcp.backend
# git checkout sunspot
# bundle
# reboot

# Change mysql password
# rake db:migrate
# sudo service tomcat6 start
# bundle exec rake sunspot:solr:start
# rails s