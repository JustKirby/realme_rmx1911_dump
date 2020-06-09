#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:67108864:3cc797f36039cc36af91f3c89c4b469c655cbcd1; then
  applypatch  EMMC:/dev/block/bootdevice/by-name/boot:67108864:bddd1b613f5ffcdcc5c750e930f3621e4f55a1be EMMC:/dev/block/bootdevice/by-name/recovery 3cc797f36039cc36af91f3c89c4b469c655cbcd1 67108864 bddd1b613f5ffcdcc5c750e930f3621e4f55a1be:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
