#!/bin/bash

###################################################################
#Script Name : auto_test.sh
#Description : compile AM4 and run dev test
#Args        :
#Author      : Chenggong Wang
#Email       : c.wang@princeton.edu
###################################################################
set -e #end with any error
#set -x #expands variables and prints a little + sign before the line
dev=/scratch/gpfs/cw55/AM4_rad_double_call
exec=$dev/AM4/exec

cd $exec
pwd
source set_env.sh 
make
cd $dev
pwd
rm -rf work/*
sbatch run_AM4_2000
echo end
exit 

