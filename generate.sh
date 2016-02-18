#!/bin/sh

TEMPLATE=generic_map.sol

function gen {
  FILENAME=map_$1\_$2\.sol
  cp $TEMPLATE $FILENAME
  sed -i "s/<KEY>/$1/g" $FILENAME
  sed -i "s/<VALUE>/$2/g" $FILENAME
}

gen string string
gen string uint
