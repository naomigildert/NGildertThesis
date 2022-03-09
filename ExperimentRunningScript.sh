#!/bin/bash

#Get executable file for CoppeliaSim
vrep_exe="/home/ng668/CoppeliaSim_Edu_V4_1_0_Ubuntu18_04/coppeliaSim.sh"
#instantiate arguments: running headlessly, running for 600 seconds, quit after simulation is complete
vrep_args="-h -s800000 -q"
#get scene file from directory
scene_file=`dirname $(readlink -f $vrep_exe)`"/scenes/combination/rebuilt/original/rebuild_combined_CE3.ttt"

#run simulation 100 times
for i in `seq 100`; do
	#print when a run in the experimental batch has started
	echo "Run $i started"
	#run simulation
	$vrep_exe $vrep_args -g$i $scene_file > /dev/null
	#print when a run in the experimental batch has finished
	echo "Run $i finished"
done

#print to console when experiment is finished
echo "CE3 w=0.5 finished"
