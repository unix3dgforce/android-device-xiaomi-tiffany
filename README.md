For building TWRP for Xiaomi Mi 5X

TWRP device tree for Xiaomi Mi 5X



Xiaomi Mi 5X was announced and released in September 2017.

## Device specifications

| Device       | Xiaomi Mi 5X					                             |
| -----------: | :---------------------------------------------------------- |
| SoC          | Qualcomm MSM8953 Snapdragon 625                             |
| CPU          | Octa-core 2.0 GHz Cortex-A53                                |
| GPU          | Adreno 506                                                  |
| Memory       | 64 GB, 4 GB RAM                         			         |
| Shipped Android version | Android 7.1.2 (Nougat), upgradable to Android 8.0 (Oreo); Android One |
| Storage      | microSD, up to 128 GB (uses SIM 2 slot)           			 |
| Battery      | Non-removable Li-Po 3080 mAh                    	         |
| Dimensions   | 155.4 x 75.8 x 7.3 mm                           	         |
| Display      | 1080 x 1920 pixels, 16:9 ratio, 5.5 inches                  |
| Rear camera 1 | 12 MP, f/2.2, 26mm (wide), 1.25µm, PDAF                    |
| Rear camera 2 | 12 MP, f/2.6, 50mm (telephoto), 1.0µm, AF, 2x optical zoom |
| Front camera | 5MP, 1080p 30 fps video  	                                 |

## Device picture

![Xiaomi Mi 5X ](https://akket.com/wp-content/uploads/2017/07/Xiaomi-Mi-5X-Photo-Real-Official-Anons-3.jpg)

## Features

Works:

- ADB
- Decryption of /data
- Screen brightness settings
- Now UI is very smooth (thanks to TWRP fix 16d831bee5a660f5ac6da0d8fff2b3ec4697d663)
- Vibration on touch (see https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/31021/)
- Correct screenshot color (see https://gerrit.omnirom.org/#/c/android_bootable_recovery/+/31042/)
Finally execute these:

```
export ALLOW_MISSING_DEPENDENCIES=true
. build/envsetup.sh
lunch omni_tiffany-eng 
mka recoveryimage
```

To test it:

```
fastboot boot out/target/product/tiffany/recovery.img
```




