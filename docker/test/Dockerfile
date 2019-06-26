FROM golang:1.12
WORKDIR /workdir
COPY . .
RUN go get github.com/stretchr/testify/assert
CMD ["make", "test"]
