#!/system/bin/sh

BOOTDEVICE="$(getprop 'ro.boot.bootdevice')"

if grep -F "Linux version 4.19" /proc/version > /dev/null; then
    KERNEL_VERSION="4.19"
fi

# Decryption
echo >> /system/etc/recovery.fstab
echo >> /system/etc/twrp.flags

if [ "$KERNEL_VERSION" == "4.19" ]; then
    cat /system/etc/recovery.fstab.fbev2 >> /system/etc/recovery.fstab
    cat /system/etc/twrp.flags.fbev2 >> /system/etc/twrp.flags
else
    cat /system/etc/recovery.fstab.fde >> /system/etc/recovery.fstab
    cat /system/etc/twrp.flags.fde >> /system/etc/twrp.flags

    mkdir /data || true
    if mount -o ro /dev/block/platform/soc/${BOOTDEVICE}/by-name/userdata /data; then
        # Mounts successfully
        if [ -d '/data/media/0/Android' ]; then
            # Unencrypted
            sed -i 's|,encryptable=footer||g' /system/etc/recovery.fstab
            sed -i 's|encryptable=footer;||g' /system/etc/twrp.flags
        else
            # FBE
            sed -i 's|,encryptable=footer|,fileencryption=aes-256-xts|g' /system/etc/recovery.fstab
            sed -i 's|encryptable=footer;|fileencryption=aes-256-xts;|g' /system/etc/twrp.flags
        fi
        umount /data || true
    fi
fi
