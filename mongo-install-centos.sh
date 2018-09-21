
# Install updates
yum -y update

# Install SELinux management tools and add rule for default port for mongod service
#semanage port -a -t mongod_port_t -p tcp 27017

# Install Mongo DB and start service
