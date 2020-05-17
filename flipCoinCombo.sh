#!/bin/bash -x
declare -A DictDouble
declare -A PercentDouble
hh=0
tt=0
th=0
ht=0

for ((count=0; count<20; count++))
do
	result=$((RANDOM % 4))
	if [ $result -eq 0 ]
	then
		$((hh++))
	elif [ $result -eq 1 ]
	then
		$((ht++))
	elif [ $result -eq 2 ]
	then
		$((th++))
	elif [ $result -eq 3 ]
	then
		$((tt++))
	fi
done

DictDouble[HH]=$hh
DictDouble[TT]=$tt
DictDouble[HT]=$ht
DictDouble[TH]=$th

for i in ${!DictDouble[@]}
do
	PercentDouble[$i]=$((${DictDouble[$i]} * 100 / 20))
done
echo ${PercentDouble[@]}

