FROM python:3.9
RUN apt-get update
RUN apt-get install -y libelf-dev bison bc cpio qemu
ENTRYPOINT [ "/bin/bash" ]
