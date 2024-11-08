#!/bin/bash

# 반복할 수를 입력받음
echo "반복횟수 입력:"
read count

# 반복문을 사용하여 출력
for i in $(seq 1 $count)
do
 echo "Hello, World!"
done
