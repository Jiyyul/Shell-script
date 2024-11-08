#!/bin/bash

# 사용자로부터 식 입력 받기
read expression

# 연산 수행
result=$(echo "$expression" | bc)

# 결과 출력
echo "$result"

