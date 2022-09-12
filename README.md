# My cross compilation playground
```shell
docker build . -t tch1001/cross-build
docker run -it --rm \
	--mount type=bind,source="$(pwd)"/share,target=/share \
	tch1001/cross-build
cd share
wget http://www.landley.net/code/firmware/downloads/aboriginal-1.4.5.tar.gz
```
