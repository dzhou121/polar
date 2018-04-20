#!/bin/bash
echo '=============================== MAKING ================================'
cd custom/s130/armgcc
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
	echo "flash write_image erase /Users/Lulu/nRF5_SDK_12/components/softdevice/s130/hex/s130_nrf51_2.0.1_softdevice.hex";
	sleep 27;
	echo "flash write_image /Users/Lulu/nRF5_SDK_12/examples/polar/firmware-right/custom/s130/armgcc/_build/nrf51422_xxac.hex";
	sleep 19;
	echo "reset";
	sleep 0.1;
	exit;

} | telnet localhost 4444

echo
echo '============================== FINISHED ==============================='
