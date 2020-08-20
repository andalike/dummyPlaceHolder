sudo apt-get update
sudo apt-get install -y docker.io
rm -rf dummyPlaceHolder
git clone https://github.com/andalike/dummyPlaceHolder.git
cd dummyPlaceHolder
sudo docker build -t andalike/aug20 .
sudo docker stop web1
sudo docker rm web1
sudo docker run -p 8080:8080 -d --name web1 andalike/aug20
