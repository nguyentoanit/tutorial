# How to start cron deamon on Docker container (Ubuntu 14.04)

In Docker container (Ubuntu 14.04). If you got a error message when restart cron service like this:

```
Rather than invoking init scripts through /etc/init.d, use the service(8)
utility, e.g. service cron restart

Since the script you are attempting to invoke has been converted to an
Upstart job, you may also use the stop(8) and then start(8) utilities,
e.g. stop cron ; start cron. The restart(8) utility is also available.
```

To resolve this issue run command to start cron deamon:

```
root@89bdd8666c95:# cron
root@89bdd8666c95:# ps -ef
UID        PID  PPID  C STIME TTY          TIME CMD
root         1     0  0 14:56 ?        00:00:00 bash
root        88     1  0 15:02 ?        00:00:00 cron
root        89     1  0 15:02 ?        00:00:00 ps -ef
```
