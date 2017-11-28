# Introduction a few Security tools on Linux
## ClamAV (https://www.clamav.net/)
### Introduction
- ClamAV is an open source antivirus engine for detecting trojans, viruses, malware & other malicious threats.
- Support many Operating Systems:
    - Debian
    - RHEL/CentOS
    - Fedora
    - Mandriva
    - Gentoo
    - openSUSE
    - FreeBSD, OpenBSD, NetBSD
    - Solaris
    - Slackware
    - Windows
    - OpenVMS
    - OSX

### Installation
- Debian:
```
apt-get update
apt-get install clamav
```

- CentOS:
```
yum install -y epel-release
yum install -y clamav
```

### How to scan
- Update ClamAV Database:
```
freshclam
```

- To check all files on the computer, displaying the name of each file:
```
clamscan -r /
```

## Rootkit Hunter (http://rkhunter.sourceforge.net/)
### Introduction
- a Unix-based tool that scans for rootkits, backdoors and possible local exploits.
- Support many Operating Systems:
    - Debian
    - RHEL/CentOS

### Installation
- Debian:
```
apt-get update
apt-get install rkhunter
```

- Centos:
```
yum update
yum install rkhunter
```

### How to scan:
- Update database and system
```
rkhunter --update
rkhunter --propupd
```

- Scan your system:
```
rkhunter -c --sk
```

## References
- http://rkhunter.sourceforge.net/
- https://sourceforge.net/projects/rkhunter/
- https://en.wikipedia.org/wiki/Rkhunter
- https://www.clamav.net/
- https://sourceforge.net/projects/clamav/
- https://en.wikipedia.org/wiki/Clam_AntiVirus
