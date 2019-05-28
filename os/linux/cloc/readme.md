# Cloc
cloc counts blank lines, comment lines, and physical lines of source code in many programming languages. Given two versions of a code base, cloc can compute differences in blank, comment, and source lines.

## Install via package manager
```
npm install -g cloc                                   # https://www.npmjs.com/package/cloc
sudo apt-get install cloc                             # Debian, Ubuntu
sudo yum install cloc                                 # Red Hat, Fedora
yum install -y epel-release && yum install -y cloc    # Centos
sudo pacman -S cloc                                   # Arch
sudo pkg install cloc                                 # FreeBSD
sudo port install cloc                                # Mac OS X with MacPorts
```

## Why Use cloc
cloc has many features that make it easy to use, thorough, extensible, and portable: 

 - Exists as a single, self-contained file that requires minimal installation effort---just download the file and run it.
 - Can read language comment definitions from a file and thus potentially work with computer languages that do not yet exist.
 - Allows results from multiple runs to be summed together by language and by project.
 - Can produce results in a variety of formats: plain text, SQL, XML, YAML, comma separated values.
 - Can count code within compressed archives (tar balls, Zip files, Java .ear files).
 - Has numerous troubleshooting options.
 - Handles file and directory names with spaces and other unusual characters.
 - Has no dependencies outside the standard Perl distribution.
 - Runs on Linux, FreeBSD, NetBSD, OpenBSD, Mac OS X, AIX, HP-UX, Solaris, IRIX, and z/OS systems that have Perl 5.6 or higher. The source version runs on Windows with either ActiveState Perl, Strawberry Perl, Cygwin, or MobaXTerm+Perl plugin. Alternatively on Windows one can run the Windows binary which has no dependencies. 

## Basic Use
cloc is a command line program that takes file, directory, and/or archive names as inputs
```
cloc --follow-links /path/to/folder/*
```

Output example:
```
cloc --follow-links folder/*
      39 text files.
      38 unique files.
      54 files ignored.

http://cloc.sourceforge.net v 1.58  T=2.0 s (18.5 files/s, 1918.0 lines/s)
-------------------------------------------------------------------------------
Language                     files          blank        comment           code
-------------------------------------------------------------------------------
XML                              1              2              1           1313
PHP                             29            176            873           1222
HTML                             5             15              3            200
CSS                              1              3              0             18
Pascal                           1              2              3              5
-------------------------------------------------------------------------------
SUM:                            37            198            880           2758
-------------------------------------------------------------------------------
```

# REFs:
- http://cloc.sourceforge.net/