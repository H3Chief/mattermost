gem install librarian-puppet
cp /home/vagrant/mattermost/provision/Puppetfile /tmp
cd /tmp && librarian-puppet install --verbose
