# Always Grayscale

A KernelSU / SukiSU Ultra / Magisk / APatch module that keeps your screen black and white on every boot, so your phone is less distracting. I mainly made it to reduce my own screentime and worked cause it's not fun to watch black and white screen all day.
Yeah it's just reading mode but hard to remove cause sometimes we turn off reading mode unconsciously and start using phone for a long time but with this module it gets harder cause it has more steps and before I turn off I realize that why I plugged it in so it helped me.

## How it works
- Uses Android's built-in color correction (grayscale) setting.
- Re-applies grayscale on every boot.
- If grayscale gets switched off in Settings, it turns back on within about 2 seconds.
- Disable or remove the module to get color back.

## Install
1. Download the latest zip from the **Releases** page.
2. Open your root manager, go to **Modules**, and install the zip.
3. Reboot.

## Locked in grayscale?
Boot into Safe Mode, or run:
```sh
su -c "touch /data/adb/modules/grayscale_boot/disable"
```

## Tested on
SukiSU Ultra, Evolution X (Android 17).

## License
MIT
