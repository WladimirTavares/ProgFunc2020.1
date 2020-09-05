#!/bin/bash

. common_script.sh
check_program hugs
if [ "$1" == "version" ] ; then
	echo "#!/bin/bash" > vpl_execution
	echo "echo | hugs | head -n6" >> vpl_execution
	chmod +x vpl_execution
	exit
fi 

cat common_script.sh > vpl_execution
cat Main.hs >> $VPL_SUBFILE0
echo "runhugs $VPL_SUBFILE0" >>vpl_execution
chmod +x vpl_execution
