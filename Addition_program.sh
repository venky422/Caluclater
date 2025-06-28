#!/usr/bin/sh

########################################################
# This Scripts helps on adding of two number.          #
#  Created by Venkatesh                                #
#  Date 2025/06/28                                     #
#                                                      #
#  #####################################################

if [ $# -eq 2 ]
then
	first_num=`echo $1`
	sec_num=`echo $2`
	Add_output=`expr $first_num + $sec_num`
	echo "${Add_output}"

else
	echo "Error required two inputs to perform addition operatin"
fi

