FROM ubuntu:latest
LABEL authors="mjchoi"

ENTRYPOINT ["top", "-b"]