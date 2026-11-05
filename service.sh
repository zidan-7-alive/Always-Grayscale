#!/system/bin/sh
MODDIR=${0%/*}
while [ "$(getprop sys.boot_completed)" != "1" ]; do sleep 2; done
sleep 5
apply() {
  settings put secure accessibility_display_daltonizer 0
  settings put secure accessibility_display_daltonizer_enabled 1
}
apply
while true; do
  if [ -f "$MODDIR/disable" ] || [ -f "$MODDIR/remove" ]; then
    settings put secure accessibility_display_daltonizer_enabled 0
    exit 0
  fi
  # re-apply if turned off or changed to another color mode
  if [ "$(settings get secure accessibility_display_daltonizer_enabled)" != "1" ] || \
     [ "$(settings get secure accessibility_display_daltonizer)" != "0" ]; then
    apply
  fi
  sleep 2
done
