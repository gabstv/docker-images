FROM alpine

RUN apk add ca-certificates
RUN apk add git
RUN apk add bash
RUN apk add curl

CMD [ "/bin/bash" ]