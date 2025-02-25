FROM gcr.io/oss-fuzz-base/base-builder-go

ENV SRC=$GOPATH/src/github.com/fluxcd/notification-controller
ENV FLUX_CI=true

COPY ./ $SRC
RUN wget https://raw.githubusercontent.com/google/oss-fuzz/master/projects/fluxcd/build.sh -O $SRC/build.sh

WORKDIR $SRC
