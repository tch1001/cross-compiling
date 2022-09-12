# My cross compilation playground
```shell
docker build . -t tch1001/cross-build
docker run -it --rm \
	--mount type=bind,source="$(pwd)"/share,target=/share \
	tch1001/cross-build
```
