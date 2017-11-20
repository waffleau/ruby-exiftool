FROM ruby:2.4

WORKDIR /tmp

RUN \
  mkdir exiftool && \
  wget https://sno.phy.queensu.ca/~phil/exiftool/Image-ExifTool-10.65.tar.gz && \
  gzip -dc Image-ExifTool-10.65.tar.gz | tar -xf - && \
  cd Image-ExifTool-10.65 && \
  perl Makefile.PL && \
  make test && \
  make install && \
  ln -fs /usr/local/bin/exiftool /usr/bin/exiftool