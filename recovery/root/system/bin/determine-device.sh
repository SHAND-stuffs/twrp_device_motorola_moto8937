#!/system/bin/sh

source /system/bin/mithorium-utils.sh

set_device_codename "$(getprop ro.boot.device)"
set_device_model "$(getprop ro.boot.hardware.sku)"

exit 0
