#! /bin/bash


# check if feh is running or not 
c=$(pgrep -x feh >/dev/null && echo "Process found" || echo "Process not found");

if [[ $c == "Process found" ]]
then
		echo "Killing The Application ..";
        killall feh ;
        feh --randomize --bg-fill ~/.Wallpapers &
else
        echo "Running The Application ..";
        feh --randomize --bg-fil ~/.Wallpapers &

fi

# check if picom is running or not
c=$(pgrep -x picom >/dev/null && echo "Process found" || echo "Process not found");

if [[ $c == "Process found" ]]
then
        echo "Killing The Application ..";
        killall piocm;
        picom --experimental-backends -b &
else
        echo "Running The Application ..";
        picom --experimental-backends -b &

fi


# check if volumeicon is running or not
c=$(pgrep -x volumeicon >/dev/null && echo "Process found" || echo "Process not found");

if [[ $c == "Process found" ]]
then
        echo "Killing The Application ..";
        killall volumeicon;
        volumeicon &
else
        echo "Running The Application ..";
        volumeicon &

fi



# check if NetworkManager applet running or not
c=$(pgrep -x volumeicon >/dev/null && echo "Process found" || echo "Process not found");

if [[ $c == "Process found" ]]
then
        echo "Killing The Application ..";
        killall nm-applet;
        nm-applet &
else
        echo "Running The Application ..";
        nm-applet &

fi

# check if blueman applet running or not
c=$(pgrep -x blueman-applet >/dev/null && echo "Process found" || echo "Process not found");

if [[ $c == "Process found" ]]
then
        echo "Killing The Application ..";
        killall blueman-applet;
        blueman-applet &
else
        echo "Running The Application ..";
        blueman-applet &

fi


xinput set-prop 'DELL08D0:00 04F3:30C4 Touchpad' 315  1
xinput set-prop 'DELL08D0:00 04F3:30C4 Touchpad' 336  1













