#!/bin/bash
line() {
    START=$1
    for k in {0..50}; do
        days=$(($k*7))
        #echo "$(date --date="${START} 2:12:12 PM +${days}days")"
        echo 'a' >> test
        git add test
        git commit --date "$(date --date="${START} 2:12:12 PM +${days}days")" -m 'test'
    done
}

FIRST="2013-01-06"

gradients=(1 2 3 4 3 2 1)

for i in "${!gradients[@]}"
do
    #echo $i ${gradients[i]}
    for (( j=1; j<=${gradients[i]}; j++ ))
    do
        #echo $j ${gradients[i]}
        line "$(date --date="$FIRST +${i}days" +"%Y-%m-%d" )"
    done
done



