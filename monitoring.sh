#!/bin/bash
RAM=$(free --mega | grep "Mem" | awk '{printf("(%.2f%%)", $3/$2*100)}')
mem=$(df -h --total | grep "total" | awk '{print $2}')
memPer=$(df -h --total | grep "total" | awk '{print "("$5")"}')
wall "
      #Architecture: $(uname -a)
      #CPU physical : $(grep "physical id" /proc/cpuinfo | uniq | wc -l)
      #vCPU : $(grep "processor" /proc/cpuinfo | wc -l)
      #Memory Usage: $(free --mega | grep "Mem" | awk '{print $3"/"$2"MB"}') $RAM
      #Disk Usage: $(df -h --total | grep "total" | awk '{print $3*1000"/"}' | tr -d 'G')$mem $memPer
      #CPU load: $(mpstat | grep "all" | awk '{print 100-$13"%"}')
      #Last boot: $(who -b | awk '{print $3" "$4}')
      #LVM use: $(if [ $(lsblk | grep "lvm" | wc -l) -eq 0 ]; then echo "no"; else echo "yes"; fi)
      #Connections TCP : $(ss -s | grep "TCP:" | awk '{print $4}' | tr -d ',') ESTABLISHED
      #User log: $(who | awk '{print $1}' | sort -u | wc -l)
      #Network: IP $(hostname -I)$(ip link | grep "ether" | awk '{print "("$2")"}')
      #Sudo : $(ls /var/log/sudo/00/00 | wc -w) cmd
"
