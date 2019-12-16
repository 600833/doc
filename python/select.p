#!/usr/bin/python
import os, sys, fcntl, select, subprocess
ps=subprocess.Popen('sshpass ssh server21',shell=True, stdin=subprocess.PIPE, stdout=subprocess.PIPE,stderr=subprocess.PIPE, bufsize=0)
fcntl.fcntl(ps.stderr, fcntl.F_SETFL, fcntl.fcntl(ps.stderr,fcntl.F_GETFL)|os.O_NONBLOCK)
fcntl.fcntl(ps.stdout, fcntl.F_SETFL, fcntl.fcntl(ps.stdout,fcntl.F_GETFL)|os.O_NONBLOCK)
ps.stdin.write(b'Thnbvcft\n')
l1, l2, l3 = select.select([ps.stdout, ps.stderr], [ps.stdin], [])
