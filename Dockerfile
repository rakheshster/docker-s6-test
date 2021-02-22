ARG BASE_VERSION
FROM rakheshster/alpine-s6:${BASE_VERSION}
ARG BASE_VERSION

RUN echo "Now using $BASE_VERSION"

RUN adduser --no-create-home --disabled-password testuser testuser

COPY root/ /

ENTRYPOINT ["/init"]