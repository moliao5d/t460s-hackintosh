# t460s-hackintosh

DSDT patches, kexts and configuration files to make OSX (El Capitan) work on Lenovo T460s.

Credits:
- Rehabman for custom DSDT patches, Kexts (IntelBacklight, BatteryManager, FakePCIID, USBInjectAll etc.) and 
tools (patchmatic, iasl)
- Pike R. Alpha's ssdtPRgen for native power management,
- tluck for the thinkpad theme, custom Kexts forks and DSDT patches to overcome some T460 specific requirements,
- shmilee for the home/end key bindings and DSDT patches,
- the fantastic community at tonymacx86 and insanelymac

## My T460s
- i7-6600U
- Intel HD520 graphics
- Non-touch 1920x1080 display
- Replaced Wifi/BT with Broadcom BCM94352Z (DW1560)
- Samsung SM961 SSD

## Installation (Clover)
Usual method found in tonymacx86 or insanelymac, but note that this laptop requires EmuVariableUefi-64.efi to
boot to the installer.

## Post-Install
Use Pike R. Alpha's ssdtPRgen to generate custom SSDT (if you have a different CPU). 

With Rehabman's patchmatic and iasl installed, you can capture origin DSDT/SSDTs (F4 at Clover boot screen), 
put the decompiled DSL in ```dsdt/origin``` directory and run the ```autoPatch.sh``` script to generate patched 
DSDT and SSDTs.

Copy the kexts in ```kexts/Other``` to Clover's kext/Other directory, install those in ```kexts/LE``` to /Library/Extension.

Remember to update Clover's config.plist. Use ```config.plist.no-serial``` as starting point.

