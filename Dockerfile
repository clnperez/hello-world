FROM bazel:0.18.1
# see clnperez/dockerfiles/bazel

RUN mkdir hello
COPY . hello
WORKDIR hello
RUN bazel build hello

COPY ./bazel-bin/hello /usr/local/bin/hello

CMD hello
