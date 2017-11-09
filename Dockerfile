FROM golang:1.9
LABEL maintainer="Saquib Mian <saquib.mian@gmail.com>"

RUN go get golang.org/x/tools/cmd/present

EXPOSE 3999

WORKDIR /app
ADD * /app/

CMD ["present", "-http=0.0.0.0:3999"]