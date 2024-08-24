FROM 192.168.55.102/wzhedudb/golang:1.19.13

ADD . /go/src/app

WORKDIR /go/src/app

RUN go mod init gitee.com/app

RUN  go build -v -o /go/src/app/jenkins-app

CMD ["./jenkins-app"]
