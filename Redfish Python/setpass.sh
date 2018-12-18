#!/bin/sh

for server in $(cat bfd.list); do
#  racadm -r "$server" -u root -p rootroot --nocertwarn set iDRAC.Users.4.Password "%booBee4booz%"
  python ChangeIdracUserPasswordREDFISH.py "$server" root calvin 3 %booBee4booz% walmart
done
