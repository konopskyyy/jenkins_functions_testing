# Fast installation script

docker build -t test_object .

docker run --rm -it -v $(pwd)/../:/home/build test_object
