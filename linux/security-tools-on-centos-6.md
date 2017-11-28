# Introduction a few Security tools on Linux
## ClamAV (https://www.clamav.net/)
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
- Set up on Debian:
```
apt-get update
apt-get install clamav
```

- Set up on CentOS:
```
yum install -y epel-release
yum install -y clamav
```

- How to scan security with ClamAV:
    - Update ClamAV Database:
```
freshclam
```

    - To check all files on the computer, displaying the name of each file:
```
clamscan -r /
```

## Rootkit Hunter (http://rkhunter.sourceforge.net/)
- a Unix-based tool that scans for rootkits, backdoors and possible local exploits.
- Support many Operating Systems:
    - Debian
    - RHEL/CentOS
- Set up on CentOS:
```
apt-get update
apt-get install rkhunter
```

- How to scan security with Rootkit Hunter:
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
