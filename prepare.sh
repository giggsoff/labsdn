#!/bin/bash
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi
yum install -y nano epel-release wget
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/OpenFlow/openvswitch-2.5.0-2.el7.x86_64.rpm
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/OpenFlow/mininet-2.2.2-2.el7.x86_64.rpm
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/OpenFlow/python-oslo-config-1.9.3-1.el7.noarch.rpm
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/OpenFlow/ryu-4.4-1.2.el7.noarch.rpm
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/QNet/ctapudp-1.2-1.el7.x86_64.rpm
wget http://downloads.naulinux.ru/pub/NauLinux/Extras/7x/RPMS/Projects/QNet/keyworker-1.2-1.el7.x86_64.rpm
yum localinstall -y openvswitch-2.5.0-2.el7.x86_64.rpm mininet-2.2.2-2.el7.x86_64.rpm python-oslo-config-1.9.3-1.el7.noarch.rpm ryu-4.4-1.2.el7.noarch.rpm ctapudp-1.2-1.el7.x86_64.rpm keyworker-1.2-1.el7.x86_64.rpm
systemctl restart openvswitch
yum install -y python2-pip net-tools tcpdump iperf3
pip install requests urllib3 pyOpenSSL --force --upgrade
mkdir -p /opt/db1
