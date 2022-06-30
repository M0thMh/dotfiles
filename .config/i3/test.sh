c=$(pgrep -x volumeicon >/dev/null && echo "Process found" || echo "Process not found");
echo $c;

if [[ $c == "Process found" ]]
then
		echo "Killing The Application ..";
        killall volumeicon;
		volumeicon & 
else 
	echo "Running The Application ..";
	volumeicon & 

fi
