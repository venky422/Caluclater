#!/usr/bim/sh
#####################################################################################
#  This scripts gets the input and perform share the request to respective program  #
#  Created by Venkatesh                                                             #
#  Creation date 2025/06/28                                                         #
#  ##################################################################################


if [ $# -eq 0 ]
then
	echo "enter calucation value "
	read cal_val

else
	cal_val=`echo $*`

fi

cal_value=`echo $cal_val |sed 's/ //g'|sed 's/^+//'`

input_count=`echo $cal_value |wc -c`

if [ $input_count -ne 0 ]
then
	add_opr_cnt=`echo $cal_value | grep -o '+'|wc -l`

	while [ $add_opr_cnt -gt 0 ] ;
	do 
		var1=`echo $cal_value | cut -d'+' -f1`
		var2=`echo $cal_value | cut -d'+' -f2`
		output=`sh Addition_program.sh $var1 $var2`
		cal_value=`echo $cal_value| sed "s/${var1}+${var2}/${output}/"`

		add_opr_cnt=`echo $cal_value | grep -o '+'|wc -l`

	done
	echo " output is $cal_value"
else 
	echo "No input is given, retry with giving an input"

fi


