FROM golang:1.16-alpine

WORKDIR /app

COPY go.mod ./
# COPY go.sum ./ #TODO

RUN go mod download

COPY *.go ./

RUN go build -o ./mass-halls-manager-service

CMD [ "./mass-halls-manager-service" ]