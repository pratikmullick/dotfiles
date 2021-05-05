# The Sway configuration file calls this script.

battery_percent=$(acpi | cut -d ',' -f2 | cut -d " " -f2)
battery_charge_status=$(acpi | cut -d ',' -f1 | cut -d " " -f3)

date_formatted=$(date "+%a %F %H:%M")


echo "Battery: "$battery_percent $battery_charge_status "|" $date_formatted

