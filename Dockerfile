FROM golang

RUN mkdir -p /app
WORKDIR /app

COPY . .

RUN go mod download
RUN go build -o app

EXPOSE 3000

ENTRYPOINT ["./app"]
