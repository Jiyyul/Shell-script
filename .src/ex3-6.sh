#!/bin/sh

# 폴더 이름을 입력 받음
folder_name="$1"

# 폴더가 있는지 확인하고 없으면 생성
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
    echo "이름과 일치하는 폴더가 없으므로 생성함."
else
    echo "폴더 존재함."
    ls "$folder_name"
fi

# 폴더로 이동
cd "$folder_name"

# 5개의 파일 생성
for i in $(seq 0 4); do
    touch "file$i.txt"
    echo "file$i.txt"
done

# 상위 디렉토리로 이동 후 'files' 폴더 안에 tar 파일 생성
cd ..
tar -cf "$folder_name/$folder_name.tar" -C "$folder_name" . 2>/dev/null

