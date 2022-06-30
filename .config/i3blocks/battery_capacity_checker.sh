capacity=$(cat /sys/class/power_supply/BAT0/capacity)
status=$(cat /sys/class/power_supply/BAT0/status)

if [ $status == "Discharging" ]
then

	if [ $capacity -lt "15" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "15" ] && [ $capacity -lt "35" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "35" ] && [ $capacity -lt "50" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "50" ] && [ $capacity -lt "85" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "85" ]
	then
		clear;
		echo "$capacity%  "
	else
		clear;
		echo "Error"
	fi


elif [ $status == "Charging" ]
then
	
	if [ $capacity -lt "15" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "15" ] && [ $capacity -lt "35" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "35" ] && [ $capacity -lt "50" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "50" ] && [ $capacity -lt "85" ]
	then
		clear;
		echo "$capacity%  "

	elif [ $capacity -gt "85" ]
	then
		clear;
		echo "$capacity%  "
	else
		clear;
		echo "Error"
	fi
fi
