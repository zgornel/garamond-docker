sudo docker build -f Dockerfile.garamond . -t garamond:garamond
sudo docker run --publish 9000:9000 --volume=data/:/data/ -e DATA_CONFIG_FILE="/data/config.json" --name garamond-instance-1 garamond:garamond
