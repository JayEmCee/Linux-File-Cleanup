
#Check for any zombie processes and kill if found
echo -e "\n\nChecking For Zombie Processes"

echo -e "$D"

ps -eo stat|grep -w Z 1>&2 > /dev/null 


if [ $? == 0 ]


then

  
	echo -e "Number of zombie process on the system are :" $(ps -eo stat|grep -w Z|wc -l) 

 
	echo -e "\n  Details of each zombie processes found"

  
	echo -e "  $D"

  ZPROC=$(ps -eo stat,pid|grep -w Z|awk '{print $2}')

  for i in $(echo "$ZPROC")

  
	do

 ps -o pid,ppid,user,stat,args -p $i

  
	done 


else

 
	echo -e "No zombie processes found on the system."

