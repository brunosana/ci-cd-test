FROM golang:latest

WORKDIR /bin/go

COPY . /bin/go

COPY . .

RUN go env GOOS=linux && \
    go env CGO_ENABLED=0 && \
    go env -w GO111MODULE=off && \
    go build -o math

CMD [ "./math" ]