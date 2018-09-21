
# Install updates
yum -y update

# Install SELinux management tools and add rule for default port for mongod service
#semanage port -a -t mongod_port_t -p tcp 27017

# Install Mongo DB and start service
yum install -y postgresql-plpython postgresql-server postgresql-contrib
postgresql-setup initdb
systemctl enable postgresql

systemctl start firewalld 
firewall-cmd --zone=public --add-port=5432/tcp --permanent
firewall-cmd --zone=public --add-port=5433/udp --permanent
firewall-cmd --reload