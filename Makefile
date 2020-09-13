DTC=dtc

all: ds3234-rpi-overlay.dtb

ds3234-rpi-overlay.dtb: ds3234-rpi-overlay.dts
	$(DTC) -@ -I dts -O dtb -o ds3234-rpi-overlay.dtb ds3234-rpi-overlay.dts

install-ds3234-rpi-overlay.dtb: ds3234-rpi-overlay.dtb
	cp ds3234-rpi-overlay.dtb /boot/overlays/ds3234-rpi.dtbo

install: install-ds3234-rpi-overlay.dtb

clean:
	rm *.dtb
