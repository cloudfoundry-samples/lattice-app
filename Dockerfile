FROM busybox:ubuntu-14.04

ENTRYPOINT ["/lattice-app"]

RUN \
  echo "lattice:x:100:" >> /etc/group; \
  echo "lattice:x:100:100:lattice:/:/bin/sh" >> /etc/passwd;

COPY lattice-app /lattice-app
RUN chmod a+x /lattice-app
RUN chown lattice:lattice /lattice-app

RUN chmod 1777 /tmp

USER lattice
