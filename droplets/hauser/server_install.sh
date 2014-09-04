# Init
\curl -sSL https://raw.github.com/quangpham/do-server-scripts/master/init_server.sh | bash

# Mysql settings
\curl -sSL https://raw.github.com/quangpham/do-server-scripts/master/mysql/enable_remote_access.sh | bash

# Clone project
rm -rf /home/rails
git clone git@bitbucket.org:quangpham/housing_backend.git /home/rails
cd /home/rails
bundle
rake db:migrate

# Config unicorn
wget https://raw.github.com/quangpham/do-server-scripts/master/unicorn/unicorn.conf
mv unicorn.conf /home/unicorn/unicorn.conf