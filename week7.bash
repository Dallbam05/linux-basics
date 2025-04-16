#!/bin/sh

echo "===== 문자열 비교 ====="
str="linux"
if [ "$str" = "linux" ]; then
  echo "참입니다."
fi

if [ "$str" != "linux" ]; then
  echo "참입니다."
else
  echo "거짓입니다."
fi

testStr="Hello"
if [ -n "$testStr" ]; then
  echo "문자열이 비어 있지 않습니다."
else
  echo "문자열이 비어 있습니다."
fi

testStr=""
if [ -z "$testStr" ]; then
  echo "문자열이 비어 있습니다."
else
  echo "문자열이 비어 있지 않습니다."
fi

echo ""
echo "===== 산술 비교 ====="
if [ 10 -eq 10 ]; then echo "10은 10과 같습니다."; fi
if [ 10 -ne 20 ]; then echo "10은 20과 다릅니다."; fi
if [ 15 -gt 10 ]; then echo "15는 10보다 큽니다."; fi
if [ 10 -ge 10 ]; then echo "10은 10보다 크거나 같습니다."; fi
if [ 5 -lt 10 ]; then echo "5는 10보다 작습니다."; fi
if [ 10 -le 10 ]; then echo "10은 10보다 작거나 같습니다."; fi
if [ ! 1 -eq 2 ]; then echo "1과 2는 같지 않습니다."; fi

echo ""
echo "===== 파일 비교 ====="
if [ -d "testdir" ]; then
  echo "이것은 디렉토리입니다."
else
  echo "이것은 디렉토리가 아닙니다."
fi

if [ -e "directory.sh" ]; then
  echo "이것은 파일입니다."
else
  echo "이것은 파일이 아닙니다."
fi

if [ -f "exist.sh" ]; then
  echo "이것은 일반 파일입니다."
else
  echo "이것은 일반 파일이 아닙니다."
fi

if [ -r "file.sh" ]; then
  if [ -w "file.sh" ]; then
    if [ -e "file.sh" ]; then
      echo "이것은 읽기, 쓰기, 실행이 가능합니다."
    else
      echo "이것은 실행할 수 없습니다."
    fi
  else
    echo "이것은 쓰기를 할 수 없습니다."
  fi
else
  echo "이것은 읽기를 할 수 없습니다."
fi

echo ""
echo "===== 논리 연산자 ====="
if [ 10 -eq 10 ] && [ 20 -eq 20 ]; then
  echo "두 조건이 모두 참입니다."
else
  echo "두 조건이 모두 참이 아닙니다."
fi

if [ 10 -eq 20 ] || [ 20 -eq 20 ]; then
  echo "두 조건 중 하나라도 참입니다."
else
  echo "두 조건 중 하나라도 참이 아닙니다."
fi

echo ""
echo "===== elif 문 ====="
if [ "$str" = "mac" ]; then
  echo "참입니다."
elif [ "$str" = "linux" ]; then
  echo "리눅스입니다."
else
  echo "거짓입니다."
fi

echo ""
echo "===== case 문 ====="
echo "Enter a number:"
read num
case $num in
  1)
    echo "You entered one."
    ;;
  2)
    echo "You entered two."
    ;;
  *)
    echo "You entered a number other than one or two."
    ;;
esac

echo ""
echo "===== for 반복문 (고정 값) ====="
for i in 1 2 3 4 5
do
  echo "현재 숫자는 $i 입니다."
done

echo ""
echo "===== for 반복문 (디렉토리 내 파일들) ====="
for item in *
do
  echo "$item"
done

echo ""
echo "===== while 문 ====="
i=1
while [ "$i" -le 5 ]
do
  echo "현재 숫자는 $i 입니다."
  i=$((i+1))
done

echo ""
echo "===== break 문 ====="
for i in 1 2 3 4 5
do
  if [ "$i" -gt 3 ]; then
    break
  fi
  echo "Number: $i"
done

echo ""
echo "===== continue 문 ====="
for i in 1 2 3 4 5
do
  if [ $i -eq 3 ]; then
    continue
  fi
  echo "Number: $i"
done

echo ""
echo "===== exit 문 ====="
if [ "$str" = "mac" ]; then
  echo "참입니다."
  exit 1
else
  echo "거짓입니다."
  # exit 0 # (스크립트 종료를 방지하려면 주석처리)
fi

echo ""
echo "===== 함수 및 return 문 ====="
say_hello() {
  echo "Hello"
  return 0
}
say_hello

echo "스크립트 완료"
exit 0
