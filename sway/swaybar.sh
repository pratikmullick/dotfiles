# The Sway configuration file calls this script.

battery_status=$(acpi | cut -d ',' -f2 | cut -d " " -f2)
date_formatted=$(date "+%a %F %H:%M")

echo "Battery: "$battery_status "|" $date_formatted

