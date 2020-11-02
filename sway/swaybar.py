import time
from datetime import datetime
from psutil import sensors_battery
from sys import stdout
from subprocess check_output

def battery():
    battery_value = int(sensors_battery().percent)
    if sensors_battery().power_plugged:
        charging_status = "Charging"
    else:
        charging_status = "Discharging"

    output = "{}: {}%".format(charging_status, battery_value)

    return output

def date():
    date = datetime.now().strftime("%a, %b %d %Y %H:%M")
    return date


# DEBUG
if __name__ == "__main__":
    print(date())
