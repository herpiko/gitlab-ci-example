FROM golang:1.12
ARG PIPELINE_ID
LABEL PIPELINE_ID=$PIPELINE_ID

WORKDIR /workdir
COPY . .
RUN go get github.com/stretchr/testify/assert
CMD ["make", "run"]
