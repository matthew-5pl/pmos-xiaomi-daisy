# pmos-xiaomi-daisy
Efforts in running PostMarketOS (https://postmarketos.org/) on Xiaomi's "Daisy" device (Mi A2 Lite).

All of the credit for the kernel bases go to xiaomi (xiaomi-daisy) and Aarqw12 (xiaomi-daisy-2).

# How to help: 
1) Unlock your Mi A2 Lite's bootloader
2) Clone repo and install pmbootstrap (https://wiki.postmarketos.org/wiki/Installation_guide)
3) Move your selected kernel variant's folder to your aports/pmaports folder (https://wiki.postmarketos.org/wiki/Porting_to_a_new_device)
4) Try editing some params the config, adding patches etc.
5) Build linux-xiaomi-daisy(-2), see if build is successful, do the same for device-xiaomi-daisy(-2), if you feel ok with deleting any previous chroots then run 'pmbootstrap zap'.
6) Run 'pmbootstrap install' and then use 'pmbootstrap flasher flash_rootfs' with device connected in fastboot mode. After the system image flash is successful, run 'pmbootstrap flasher flash_kernel' to flash the necessary files to boot pmos.
7) Check if you got stuff to work, the main focus right now is on getting the framebuffer to work and fixing ssh errors.
8) If you get any improvements, feel free to make a pull request and include all necessary files for linux and device building.

Progress on xiaomi-daisy (based on daisy-q official kernel from xiaomi):
-kernel loads<br/>
-logo shows up and display lights up<br/>
-device not recognised by pc, can't telnet/ssh into it<br/>
-weston and plasma-mobile do not seem to load, possibly for framebuffer issues. if you manage to figure it out, make a pull request asap!
![alt text](https://raw.githubusercontent.com/matthew-5pl/pmos-xiaomi-daisy/master/xiaomi-daisy-preview.jpg)


Progress on xiaomi-daisy-2 (based on https://github.com/Aarqw12/kernel_loki):<br/>
-kernel loads<br/>
-screen remains off, logo does not show up<br/>
-able to telnet into the device if the debug initfs hook is set before running 'pmbootstrap install'<br/>
-plasma-mobile does not load. screen remains off
