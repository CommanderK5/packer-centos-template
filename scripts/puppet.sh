RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-${RELEASE}.noarch.rpm
yum install -y puppet-agent
