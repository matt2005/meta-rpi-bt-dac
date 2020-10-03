#!/bin/sh
### BEGIN INIT INFO
# Provides:          bt-init
# Required-Start:
# Required-Stop:
# Default-Start:     5
# Default-Stop:
# Short-Description: Connect to Bluetooth module with UART and enable a2dp
### END INIT INFO

/usr/bin/hciattach /dev/serial1 bcm43xx 921600 flow -

bluetoothctl power on
bluetoothctl discoverable on

/usr/bin/bluealsa-aplay --profile-a2dp 00:00:00:00:00:00 &

