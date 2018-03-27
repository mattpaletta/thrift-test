FROM thrift:latest as builder
ADD *.thrift /thrift/
WORKDIR /thrift
RUN thrift -r -gen py tutorial.thrift


FROM python:latest
ADD . /src
RUN pip install thrift
COPY --from=builder /thrift/gen-py /src/gen-py
WORKDIR /src
RUN python --version