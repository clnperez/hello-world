FROM bazel:0.18.1
# see clnperez/dockerfiles/bazel

RUN mkdir hello
COPY . hello
WORKDIR hello
RUN bazel build hello

RUN cp `find -L bazel-bin -name hello | head -1` /usr/local/bin/hello

CMD hello
