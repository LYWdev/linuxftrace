#!/bin/bash

# 이 스크립트는 localhost80을 1초마다 무한히 반복하고, 결과를 timestamp | 시간|결과|이렇게 표로 작성해서 log.text에 저장합니다.

# 1초마다 localhost80을 반복합니다.
while true; do

  # curl 명령어를 사용하여 localhost80에서 응답을 가져옵니다.
  response=$(curl http://localhost:80)

  # 응답의 시간戳를 가져옵니다.
  timestamp=$(date +%s)

  # 응답의 시간을 가져옵니다.
  time=$(date +"%Y-%m-%d %H:%M:%S")

  # 응답의 결과를 가져옵니다.
  result=$response

  # timestamp, 시간, 결과를 log.text에 저장합니다.
  echo "$timestamp | $time | $result" >> log.text

  # 1초 쉬어줍니다.
  sleep 1

done

