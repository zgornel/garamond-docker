sudo docker build -f Dockerfile.garamond . -t garamond:garamond
sudo docker run --publish 9000:9000 --volume=/local/data/path/:/container/data/path/ -e DATA_CONFIG_FILE="config.json" --name garamond-instance-1 garamond:garamond
