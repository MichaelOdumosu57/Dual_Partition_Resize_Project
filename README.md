When you are resizing partitions of Windows 10 and Linux, depending on how advanced you are you want to fully reinstall the bootloaders for each OS, and the OS itself. The respective kernels don't need to be reinstalled, they are smart enough to read new bootloaders and take system control properly

My recommendations
Resizing Windows 10: back up your data there and fully reinstall your OS

Resizing Ubuntu 16.04.5: back up your data DO NOT boot into ubuntu after resizing, get an ubuntu bootable with the same architecture and OS version and chroot into your hard drive ubuntu OS and purge grub they pay attention to the type of your boot partition, if BIOS based install grub-pc  if EFI based (UEFI motherboard software) install grub-efi-amd64, only if your OS architecture is amd64, if not make sure grub-efi-amd64 is compatible with your OS architecture and planned projects before using it

If ever prompted to choose where to place the bootloader, choose the boot partition at the beginning of your drive, the installers are smart enough to place the needed part in the partition

Make sure you find the limited amount of GB your OS needs to run properly before reinstalling

I say DO NOT boot into ubuntu after resizing and I also say resize windows 10 first before ubuntu 16.04.5 because Windows is aggressive and usually does not care for other OS on the system. and if you are dealing with system boot your hardware can get compromised"
