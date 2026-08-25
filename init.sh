# /bin/bash
docker build -t overleaf-pandoc:local pandoc/  

git clone https://github.com/ayaka-notes/toolkit

cp -r ./pre-config/* ./toolkit/config

cd ./toolkit

bin/up -d

# http://localhost:80
echo "Open http://localhost:80 in your browser to access Overleaf."