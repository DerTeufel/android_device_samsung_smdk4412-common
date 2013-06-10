#!/system/xbin/busybox sh
BB="/system/xbin/busybox"

echo "running ubuntu.sh"
$BB insmod /system/lib/modules/dhd.ko firmware_path=/system/etc/wifi/bcmdhd_sta.bin nvram_path=/system/etc/wifi/nvram_net.txt

cp /system/Shell.qml /data/ubuntu/usr/share/qml-phone-shell/Shell.qml
chmod 755 /data/ubuntu/usr/share/qml-phone-shell/Shell.qml

echo "Remove Shell.qml from system"
mount -o rw,remount /system
rm /system/Shell.qml
mount -o ro,remount /system

echo "Finished"
