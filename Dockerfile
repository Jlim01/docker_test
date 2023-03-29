FROM ubuntu:18.04 AS builder

ARG DEBIAN_FRONTED=noninteractive

RUN apt-get -y update && apt-get install -y
RUN apt-get -y install g++ cmake git

COPY . .

WORKDIR .

RUN mkdir ./build
RUN cmake -B/build -S . -D CMAKE_BUILD_TYPE=Release
RUN cmake --build /build

FROM Ubuntu:18.04

WORKDIR .

COPY --from=builder /build/testdocker_run ./


CMD ["./build/testdocker_run"]