#!/bin/bash
echo '=============================== MAKING ================================'
cd custom/blank/armgcc
make
if [[ $? -ne 0 ]] ; then
    exit 0
fi
sleep 0.1
HEX=`readlink _build/nrf51422_xxac.hex`
du $HEX

echo
echo '============================= PROGRAMMING ============================='
{
	echo "reset halt";
	sleep 0.1;
	echo "nrf51 mass_erase";
	sleep 1;
	echo "flash write_image /Users/Lulu/nRF5_SDK_12/examples/polar/firmware-right/custom/blank/armgcc/_build/nrf51422_xxac.hex";
	sleep 10;
	echo "reset";
	sleep 0.1;
	exit;

} | telnet localhost 4444

echo
echo '============================== FINISHED ==============================='
