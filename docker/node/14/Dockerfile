FROM node:14-alpine

RUN apk --no-cache add \
    "autoconf>=2.69-r2" \
    "automake>=1.16.1-r0" \
    "build-base>=0.5-r1" \
    "curl>=7.67.0-r0" \
    "g++>=9.2.0-r4" \
    "gcc>=9.2.0-r4" \
    "ghostscript>=9.50-r0" \
    "git>=2.24.3-r0" \
    "groff>=1.22.4-r0" \
    "icu-dev>=64.2-r1" \
    "imagemagick>=7.0.9.7-r0" \
    "imagemagick-dev>=7.0.9.7-r0" \
    "lcms2-dev>=2.9-r1" \
    "less>=551-r0" \
    "libgit2-dev>=0.28.5-r0" \
    "libjpeg>=8-r6" \
    "libpng-dev>=1.6.37-r1" \
    "libtool>=2.4.6-r7" \
    "libxml2-dev>=2.9.10-r2" \
    "make>=4.2.1-r2" \
    "nasm>=2.14.02-r0" \
    "pcre-dev>=8.43-r0" \
    "python3-dev>=3.8.2-r0" \
    "ssmtp>=2.64-r14" \
    "zip>=3.0-r7" \
    "zlib-dev>=1.2.11-r3"

RUN npm install -g \
    jest \
    node-gyp \
    nodemon \
    pm2 \
    typescript

