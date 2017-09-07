FROM debian:jessie

ADD lfs-test-server /opt

ENV CONTENT_BASE_PATH /var/git-lfs
ENV LFS_METADB=${CONTENT_BASE_PATH}/lfs.db LFS_CONTENTPATH=${CONTENT_BASE_PATH}/lfs-content
ENV LFS_ADMINUSER=admin LFS_ADMINPASS=admin
VOLUME ${CONTENT_BASE_PATH}

EXPOSE 8080

CMD ["/opt/lfs-test-server"]
