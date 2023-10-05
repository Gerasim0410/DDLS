# DLP

Based on [YOLACT for CPU](https://github.com/zzuxzt/yolact_cpu/)

## Docker image 

Pull the existing image from [DockerHub](https://hub.docker.com/)  

```
docker pull tyurina0410/test
```

And run the container

```
docker run tyurina0410/test
```

the process will launch [eval.py](./yolact_cpu/eval.py) and [test](./test.py) where an image will be generated and a test will be performed to compare the resulting image with what I got before.

After that you will be able to copy the resulting images to your folder

Check the container_id

```
docker ps -a
```

And save images

```
docker cp <container_id>:./output/ ~/
```

## Docker image build

Firstly clone this repository recursively

```
git clone https://github.com/Gerasim0410/DDLS.git --recursive
cd DDLS
```
Make sure you have Docker installed and your Docker daemon is running  
Then build an image
```
docker build -t test .
```

You can try to run it with 
```
docker run test
```
