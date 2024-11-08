#!/bin/sh

# DB.txt 파일 경로
db_file="DB.txt"

# 입력받은 인자
name="$1"
info="$2"

# 이름과 전화번호가 입력되었는지 확인
if [ -z "$name" ] || [ -z "$info" ]; then
    echo "사용법: sh ./ex3-8.sh 이름 전화번호"
    exit 1
fi

# DB.txt 파일이 존재하는지 확인
if [ ! -f "$db_file" ]; then
    # 파일이 없으면 새로 생성
    touch "$db_file"
fi

# 입력 받은 정보 DB.txt에 추가
echo "$name - $info" >> "$db_file"

