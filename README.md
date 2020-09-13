Steps:
1. Connect DS3234 to Raspberry Pi
2. Enable SPI:
    - `sudo raspi-config`
    - Advanced Options
    - SPI
    - Load SPI kernel module? Yes
3. `sudo make install`
4. Edit `/boot/config.txt`
    - Verify `dtparam=spi=on` is set
    - Add `dtoverlay=ds3234-rpi`
4. Reboot
5. Verify
    - `sudo vcdbg log msg`
    - `lsmod | grep ds32`
    - `cat /sys/bus/spi/devices/spi0.0/modalias` (`spi:ds3234`)
    - `ls /dev/rtc0`
    - `sudo hwclock`

Sources:
- https://web.archive.org/web/20170301064003/http://www.sciencegizmo.com.au/?p=137
- https://www.raspberrypi.org/forums/viewtopic.php?t=24325
- https://github.com/raspberrypi/linux/blob/rpi-5.4.y/arch/arm/boot/dts/overlays/spi-rtc-overlay.dts
