#! C:\Program Files\Git\bin\sh.exe

#1 Scenario
read -p "Enter packet size (in bytes): " packet_size
#input size of packet
if [ "$packet_size" -ge 100 ]; then
  #if the packet is greater than equal to 100, you get true, otherwise false
  echo "True - Packet meets the threshold for analysis."
else
  echo "False - packet is too small for analysis."
fi

#2 Scenario
read -p "Enter the protocol name: " protocol_name
#user inputs protocol name
if [ "$protocol_name" == "Cyphersec" ]; then
#if you input the right protocol you will get a confirmation
  echo "Yes - Cyphersec is the best protocol ever!"
#if you don't capitalize the name
elif [ "$protocol_name" == "cyphersec" ]; then
  echo "No, I want a big Cybersec!"
#if you input anything else
else
  echo "Cyphersec! Not $protocol_name!"
fi

#3 Scenario
#input of data to determine if it is less than a certain amount
read -p "Enter your annual data usage in MB: " data_usage
if [ "$data_usage" -le 85528 ]; then
  tax=$((data_usage * 18 / 100 - 556))
else
  surplus=$((data_usage - 85528))
  tax=$((14839 + surplus * 32 / 100))
fi
if [ "$tax" -lt 0 ]; then
  tax=0
fi
echo "Your Data Security Tax is: $tax MB"
#output shows how much tax you owe
#formula for anything over a certain amount
#4 Scenario
read -p "Enter the year to check the patch cycle: " year
if [ "$year" -lt 2000 ]; then
  echo "Not within the managed patch period."
else
  if (( year %4 !=0 )); then
    echo "Standard Year"
  elif (( year % 100 !=0 )); then
    echo "Patch Year"
  elif (( year % 400 != 0 )); then
      echo "Standard Year"
  else
      echo "Patch Year"
  fi
fi