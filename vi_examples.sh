#!/bin/bash

# 예제 1: 새 파일 만들고 내용 입력
cat <<EOF > example.txt
My first vi editing!
I am learning Linux.
EOF

# 예제 2: 한 줄 추가
echo "This is a new line." >> example.txt

# 예제 3: 마지막 줄의 마침표(.)를 s로 수정
sed -i '$s/\.$/s/' example.txt

# 예제 4: 삭제 및 복사 예제 파일 생성
cat <<EOF > example4.txt
Line one
Line two
Line three
EOF

# 두 번째 줄 삭제
sed -i '2d' example4.txt

# 첫 번째 줄 복사해서 두 번째 줄로 붙여넣기
line1=$(sed -n '1p' example4.txt)
sed -i "1a $line1" example4.txt