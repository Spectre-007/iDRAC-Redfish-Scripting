#!/bin/sh

for server in $(cat bfd.list); do
#  racadm -r "$server" -u root -p rootroot --nocertwarn set iDRAC.Users.4.Password "%booBee4booz%"
#  python ChangeIdracUserPasswordREDFISH.py "$server" root calvin 3 %booBee4booz% walmart
  python ImportSystemConfigurationLocalFilenameREDFISH.py -ip "$server" -u root -p calvin -t idrac -f snmp.xml -s Forced
done
