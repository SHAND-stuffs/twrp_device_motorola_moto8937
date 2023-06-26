#!/system/bin/sh

source /system/bin/mithorium-utils.sh

if [ -d "/sys/motorola-msm8937-mach" ]; then
	set_device_codename "$(cat /sys/motorola-msm8937-mach/variant)"
else
	set_device_codename "$(getprop ro.boot.device)"
fi

set_device_model "$(getprop ro.boot.hardware.sku)"

exit 0
