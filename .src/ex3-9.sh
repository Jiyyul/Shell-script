#!/bin/sh

# DB.txt 파일 경로
db_file="DB.txt"

# 인자로 받은 이름
search="$1"

# 이름이 입력되었는지 확인
if [ -z "$search" ]; then
    echo "정보를 입력해주세요"
    exit 1
fi

# DB.txt 파일이 존재하는지 확인
if [ ! -f "$db_file" ]; then
    echo "DB.txt 파일이 존재하지 않습니다. 팀원 정보를 먼저 추가하세요."
    exit 1
fi

# 이름으로 검색하여 정보 출력
#echo "검색 결과:"
result=$(grep -i "$search" "$db_file")

if [ -z "$result" ]; then
    echo "해당 팀원은 DB.txt에 없습니다."
else
    echo "$result"
fi

