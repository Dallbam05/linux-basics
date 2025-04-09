#!/bin/sh

# quiz1 ~ quiz10 생성
echo "🔧 스크립트 생성 중..."

# quiz1.sh
cat << 'EOF' > quiz1.sh
#!/bin/sh
ls
EOF

# quiz2.sh
cat << 'EOF' > quiz2.sh
#!/bin/sh
cd ~
pwd
EOF

# quiz3.sh
cat << 'EOF' > quiz3.sh
#!/bin/sh
touch myFile.txt
EOF

# quiz4.sh
cat << 'EOF' > quiz4.sh
#!/bin/sh
mkdir myDirectory
rmdir myDirectory
EOF

# quiz5.sh
cat << 'EOF' > quiz5.sh
#!/bin/sh
touch original.txt
cp original.txt copy_of_original.txt
EOF

# quiz6.sh
cat << 'EOF' > quiz6.sh
#!/bin/sh
touch toBeMoved.txt
mkdir -p newLocation
mv toBeMoved.txt newLocation/
EOF

# quiz7.sh
cat << 'EOF' > quiz7.sh
#!/bin/sh
echo "Hello, Linux!" > notes.txt
cat notes.txt
EOF

# quiz8.sh
cat << 'EOF' > quiz8.sh
#!/bin/sh
touch toDelete.txt
rm toDelete.txt
EOF

# quiz9.sh
cat << 'EOF' > quiz9.sh
#!/bin/sh
cat << EOT > multiLine.txt
Line 1
Line 2
Line 3
Line 4
Line 5
EOT
head -n 3 multiLine.txt
EOF

# quiz10.sh
cat << 'EOF' > quiz10.sh
#!/bin/sh
ls
sleep 3
clear
EOF

# 실행 권한 부여
chmod +x quiz*.sh

echo "✅ 모든 스크립트가 생성되었습니다!"
