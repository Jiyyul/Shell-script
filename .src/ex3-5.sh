#!/bin/sh


echo "프로그램을 시작합니다."
echo "함수 안으로 들어왔습니다."

# 내부 함수 정의
run_ls() {
    # 전달된 모든 인자를 ls 명령어의 옵션으로 전달
    ls "$@"
}

# 기본 옵션 설정 (-a)
default_option="-a"

# 명령 중 인자가 있는지 확인
if [ "$#" -gt 0 ]; then
    # 인자가 있으면 해당 옵션으로 ls 실행
    run_ls "$@"
else
    # 인자가 없으면 기본 옵션으로 ls 실행
    run_ls "$default_option"
fi

echo "프로그램을 종료합니다."

