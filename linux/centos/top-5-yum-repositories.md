# Top Yum Repositories for CentOS/RHEL 7/6/5 

YUM ( Yellowdog Updater, Modified ) is a command-line package management utility for RPM-based Linux systems. Yum is useful for RPMs which have dependencies, Yum searches for all dependencies of any RPM in all available repositories. Below list contains top 5 yum repositories (RepoForge, EPEL, REMI, ATrpms, Webtatic) for RHEL based systems with installation links, which we need to keep our system up to date with latest packages. These repositories having most of the RPMs required for servers.

## RPMFusin Repository
Use following commands to install EPEL yum repository on your CentOS/RHEL 7/6/5 systems.

```
### For CentOS/RHEL 7 ###
sudo yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm 
sudo yum localinstall --nogpgcheck https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-7.noarch.rpm

### For CentOS/RHEL 6 ###
sudo yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-6.noarch.rpm
sudo yum localinstall --nogpgcheck https://download1.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-6.noarch.rpm

### For Fedora 27/26/25/24/23 ###
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm
sudo dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```

## REMI Repository
Use following commands to install REMI yum repository on your CentOS/RHEL 7/6/5 and Fedora 21/20 systems.

```
### For CentOS/RHEL 7 ###
sudo yum localinstall --nogpgcheck http://rpms.famillecollet.com/enterprise/remi-release-7.rpm

### For CentOS/RHEL 6 ###
sudo yum localinstall --nogpgcheck http://rpms.famillecollet.com/enterprise/remi-release-6.rpm

### Fedora 27/26/25/24 ###
sudo dnf install http://rpms.famillecollet.com/fedora/remi-release-$(rpm -E %fedora).rpm
```

## Webtatic Repository

```
sudo yum localinstall --nogpgcheck http://repo.webtatic.com/yum/el7/webtatic-release.rpm

### For CentOS/RHEL 6 ###
sudo yum localinstall --nogpgcheck http://repo.webtatic.com/yum/el6/latest.rpm

### For CentOS/RHEL 5 ###
sudo yum localinstall --nogpgcheck http://repo.webtatic.com/yum/el5/latest.rpm
```

## Refs:
- https://tecadmin.net/top-5-yum-repositories-for-centos-rhel-systems/
