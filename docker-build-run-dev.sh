sudo docker build -f docker/Dockerfile.garamond . -t garamond:garamond
sudo docker run --publish 9000:9000 --volume=/local/data/path/:/container/data/path/ -e ENV_VAR="some_value_for_env_var" --name garamond-instance-1 garamond:garamond
