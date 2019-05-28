# How to Install FFmpeg on CentOS
FFmpeg is a popular open source solution to record, convert, and stream audio and video, which is widely used in all kinds of online streaming services.
In this article, I will show you how to install FFmpeg on a CentOS 6/7 server.

## Prerequisites
- A newly deployed Vultr CentOS 6 or CentOS 7 server instance.
- A sudo user.

## Update the system

```
sudo yum update -y
sudo yum install epel-release sudo -y
```

## Install the Nux Dextop YUM repo
There are no official FFmpeg rpm packages for CentOS for now. Instead, you can use a 3rd-party YUM repo, Nux Dextop, to finish the job.

On CentOS 7, you can install the Nux Dextop YUM repo with the following commands:

```
yum install -y http://li.nux.ro/download/nux/dextop/el7/x86_64/nux-dextop-release-0-5.el7.nux.noarch.rpm
```

For CentOS 6, you need to install another release:

```
yum install -y http://li.nux.ro/download/nux/dextop/el6/x86_64/nux-dextop-release-0-2.el6.nux.noarch.rpm
```

## Install FFmpeg and FFmpeg development packagesInstall FFmpeg and FFmpeg development packages

```
sudo yum install ffmpeg ffmpeg-devel -y
```

Confirm the installation of FFmpeg:

```
ffmpeg -h
```

## Refernces:
- https://www.vultr.com/docs/how-to-install-ffmpeg-on-centos
