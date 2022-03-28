# Better GPS Config for Android
This repo exists as a way for me to push changes to my phone's `gps.conf`.  Where possible, I will try to merge in actual commits from the repos where I get my configs.

## How it works
The stock android `gps.conf` file (found in `/system/etc` and `/system/vendor/etc`) is replaced with a new one with known-good settings;  the intention being to improve the speed and reliability of GPS satellite fixes (locks).

## Device requirements
- A Qualcomm Snapdragon chipset.
- Rooted with Magisk.

## Instructions
**Install this through Magisk -- *not* TWRP!**

0. Make a backup of your existing `gps.conf` files, just in case.
1. Download this repo as a `.zip` file from GitHub.
2. Open Magisk and go to the "**Modules**" section.
3. Click "**Install from storage**" and select the `.zip` file you downloaded.
4. Reboot your device.
5. Set your location settings to "**Device only**".
6. Go outdoors -- somewhere with a clear and unobstructed view of the sky.
7. Download the "**GPS Status**" app from the Google Play Store, swipe from the left, and do all of the calibrations.

   - **Note 1:** Consider using the "**GPS Locker**" app -- you just need to open it once, wait for a few satellites to fix, and close (Make sure to hit "**Cancel**" in the dialog that pops up when you exit!).  Leave the app running in the background, and your GPS signal *should* keepalive.
   - **Note 2:** GPS works best in the outdoors.  It takes longer to fix (and consumes more battery) when you are indoors.
   - **Note 3:** If you use a config that uses transport layer security (SUPL_TLS*) copy the appropriate certificate file (SuplRootCert*) to the same directory.
   - **Note 4:** If you like to create your own file, remember to modify your NTP server and supplicant provider for your country. Use gps.conf as a base to start off.

## Links
- [XDA Xiaomi MI 5 Forum Thread](https://forum.xda-developers.com/mi-5/how-to/step-step-definitive-gps-solution-global-t3695769)
- [Global Optimized GPS File Replacer](https://github.com/JonasCardoso/optmizedgpsconf)
- [Android_gps](https://github.com/Astralix/Android_gps)
