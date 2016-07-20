# fanswitch

Simple script to toggle CPU fan switch in Acer AOD270

## Requirement

`acerhdf` module loaded with fake information from file `/etc/modprobe.d/fan-control.conf`

```
options acerhdf kernelmode=1 interval=10 fanon=55000 fanoff=50000 force_bios="v0.3310" force_product="AOA150"
```

## Manually turn ON/OFF

ON

`echo -n "enabled" > /sys/class/thermal/thermal_zone1/mode`

OFF

`echo -n "disabled" > /sys/class/thermal/thermal_zone1/mode`

