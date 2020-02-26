#!/bin/bash

cd /compile/source/linux-rockchip-rk322x

for i in `cat /compile/doc/rockchip-rk322x/misc.322/options/docker-options-mod.txt`; do
  echo $i
  ./scripts/config -m $i
done

for i in `cat /compile/doc/rockchip-rk322x/misc.322/options/docker-options-yes.txt`; do
  echo $i
  ./scripts/config -e $i
done
