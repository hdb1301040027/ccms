#! /bin/bash
cd /lib/modules/4.4.38-tegra/kernel/net/can
sudo insmod can.ko
sudo insmod can-raw.ko
sudo insmod can-gw.ko
sudo insmod can-bcm.ko
cd /lib/modules/4.4.38-tegra/kernel/drivers/net/can
sudo insmod can-dev.ko
sudo insmod slcan.ko
sudo insmod vcan.ko
cd /lib/modules/4.4.38-tegra/t18x/drivers/net/can/mttcan/native
sudo insmod mttcan.ko
sudo ip link set can0 type can bitrate 250000
sudo ip link set up can0
ip -s -d link show can0
sudo ip link set can1 type can bitrate 250000
sudo ip link set up can1
ip -s -d link show can1




