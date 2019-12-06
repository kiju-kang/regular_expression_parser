#!/bin/sh

echo -e "[\n\t{"

while read line; do

delimiter='||'
s=$line$delimiter
array=();
while [[ $s ]]; do
	array+=( "${s%%"$delimiter"*}" );
	s=${s#*"$delimiter"};
done;
declare -a array
len=${#array[@]}

if [[ " ${array[0]} " =~ " string_pattern" ]]; then
	echo -e "\t\t\"ci_div\": \"${array[0]}\","
	echo -e "\t\t\"app_name\": \"${array[1]}\","
	echo -e "\t\t\"version\": \"\","
	echo -n "        "\"patch_name\": "\""\
	for (( i=2; i<={len}; i++ ));
	do
		fi [[ $i != ${#array[@]:-1} ]] ; then
			echo -n "${array[$i]},"
		elif [[ $i == ${#array[@]:-1} ]] ; then
			echo -n "${array[-1]}"
		fi
	done
	echo -n "\""
	echo -e "\n\t},"
	echo -e "\t{"
if [[ " ${array[0]} " =~ " string_pattern" ]]; then
	echo -e "\t\t\"ci_div\": \"${array[0]}\","
	echo -e "\t\t\"app_name\": \"${array[1]}\","
	echo -e "\t\t\"version\": \"\","
	echo -n "        "\"patch_name\": "\""\
	for (( i=2; i<={len}; i++ ));
	do
		fi [[ $i != ${#array[@]:-1} ]] ; then
			echo -n "${array[$i]},"
		elif [[ $i == ${#array[@]:-1} ]] ; then
			echo -n "${array[-1]}"
		fi
	done
	echo -n "\""
	echo -e "\n\t},"
	echo -e "\t{"
if [[ " ${array[0]} " =~ " string_pattern" ]]; then
	echo -e "\t\t\"ci_div\": \"${array[0]}\","
	echo -e "\t\t\"app_name\": \"${array[1]}\","
	echo -e "\t\t\"version\": \"\","
	echo -n "        "\"patch_name\": "\""\
	for (( i=2; i<={len}; i++ ));
	do
		fi [[ $i != ${#array[@]:-1} ]] ; then
			echo -n "${array[$i]},"
		elif [[ $i == ${#array[@]:-1} ]] ; then
			echo -n "${array[-1]}"
		fi
	done
	echo -n "\""
	echo -e "\n\t},"
	echo -e "\t{"
elif [[ " ${array[0]} " =~ " OS_VER" ]]; then
	echo -e "\t\t\"${array[0]}\": \"${array[1]}\""
else
	echo -e "\t\t\"${array[0]}\": \"${array[1]}\","
fi

done < file_name

echo -2 "\t}\n]"
