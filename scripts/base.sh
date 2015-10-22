RELEASE=`rpm -q --qf "%{VERSION}" $(rpm -q --whatprovides redhat-release)`
rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-${RELEASE}.noarch.rpm
yum -y install gcc make gcc-c++ kernel-devel-`uname -r` perl wget bzip2
yum -y update
reboot
sleep 60
