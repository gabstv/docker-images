FROM gabs2/imagemagick

# Microsoft fonts
RUN apk --no-cache add msttcorefonts-installer fontconfig && \
    update-ms-fonts && \
    fc-cache -f

# Libreoffice

RUN apk --no-cache add libreoffice

# Unoconv

ENV UNO_URL=https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv

RUN curl -Ls $UNO_URL -o /usr/bin/unoconv &&\
    chmod +x /usr/bin/unoconv &&\
    ln -s /usr/bin/python3 /usr/bin/python &&\
    unoconv --version

# FFmpeg
RUN apk add ffmpeg

CMD [ "/bin/bash" ]