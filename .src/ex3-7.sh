#!/bin/sh

# 폴더 이름을 입력 받음
folder_name="$1"

# 폴더가 있는지 확인하고 없으면 생성
# ex 3-6 참조
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi

# 폴더로 이동
cd "$folder_name"

# 5개의 파일 생성
for i in $(seq 0 4); do
    touch "file$i.txt"
done

# 각 파일 이름으로 하위 폴더를 만들고, 파일을 링크
for i in $(seq 0 4); do
    # 파일 이름에 해당하는 폴더 생성
    subfolder="file$file$i"
    mkdir "$subfolder"
    
    # 각 폴더에 심볼릭 링크로 파일 연결
    ln -s "../file$i.txt" "$subfolder/file$i.txt"
done

