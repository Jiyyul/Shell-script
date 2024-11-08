#!/bin/bash

# 사용자로부터 입력 받기
echo "몸무게(kg)와 신장(cm)을 입력하세요:"
read weight height

# 신장을 미터 단위로 변환
height_meter=$(echo "scale=2; $height / 100" | bc)

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height_meter * $height_meter)" | bc)

# BMI에 따른 비만 여부 판단
if [ $(echo "$bmi < 18.5" | bc) -eq 1 ]; then
  echo "저체중입니다."
elif [ $(echo "$bmi >= 18.5 && $bmi < 23" | bc) -eq 1 ]; then
  echo "정상 체중입니다."
else
  echo "과체중입니다."
fi

