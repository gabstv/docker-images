FROM alpine

RUN apk add ca-certificates
RUN apk add git
RUN apk add --no-cache imagemagick ghostscript
RUN apk add --no-cache bash curl

#ENTRYPOINT [ "/usr/bin/magick" ]

CMD [ "/bin/bash" ]