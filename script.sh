#!/bin/bash
for i in 1 10 20 50 100 200 500 1000 2000 5000; do
  cat $1 > $i.cfg
  string="{EMC_ENERGY}"
  sed -i "s/$string/$i/" $i.cfg #zastępuje ciąg znaków $string na $i
  string="{{ e.random_x }}"
  random=$(echo $RANDOM)
  sed -i "s/$string/$random/" $i.cfg #zastępuje ciąg znaków $string na $random
  string="{{ e.random_y }}"
  random=$(echo $RANDOM)
  sed -i "s/$string/$random/" $i.cfg #zastępuje ciąg znaków $string na $random
done


for i in 1 10 20 50 100 200 500 1000 2000 5000; do
	./geant4sim.exe $i.cfg &
done
