# Better GPS Config for Android
Configuration files for Androids GPS and A-GPS system

This repo exists as a way for me to push changes to my phone's `gps.conf`.  Where possible, I will try to merge in actual commits from the repos where I get my configs.

## How it works
The stock android `gps.conf` file (found in `/system/etc` and `/system/vendor/etc`) is replaced with a new one with known-good settings;  the intention being to improve the speed and reliability of GPS satellite fixes (locks).

## Device requirements
- A Qualcomm Snapdragon chipset.
- Rooted with Magisk.

## Instructions
**Install this through Magisk -- *not* TWRP!**

If your device already has a file like this, make a backup before tampering.

0. Download this repo as a `.zip` file from GitHub.
1. Open Magisk and go to the "**Modules**" section.
2. Click "**Install from storage**" and select the `.zip` file you downloaded.
3. Reboot your device.
4. Set your location settings to "**Device only**".
5. Go outdoors -- somewhere with a clear and unobstructed view of the sky.
6. Download the "**GPS Status**" app from the Google Play Store, swipe from the left, and do all of the calibrations.

   - **Note 1:** Consider using the "**GPS Locker**" app -- you just need to open it once, wait for a few satellites to fix, and close (Make sure to hit "**Cancel**" in the dialog that pops up when you exit!).  Leave the app running in the background, and your GPS signal *should* keepalive.
   - **Note 2:** GPS works best in the outdoors.  It takes longer to fix (and consumes more battery) when you are indoors.

If you use a config that uses transport layer security (SUPL_TLS*) copy the appropriate certificate file (SuplRootCert*) to the same directory.

If you like to create your own file, remember to modify your NTP server and supplicant provider for your country. Use gps.conf as a base to start off.

## Links
- [Module XDA Xiaomi MI 5 Forum Thread](https://forum.xda-developers.com/mi-5/how-to/step-step-definitive-gps-solution-global-t3695769)
- [GitHub Module Page](https://github.com/Magisk-Modules-Repo/Global-Optimized-GPS-File-Replacer)
