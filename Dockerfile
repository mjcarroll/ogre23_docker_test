ARG BASE_IMAGE_TAG
FROM "ubuntu:${BASE_IMAGE_TAG}"
ARG OGRE_VERSION

COPY setup.sh /tmp/setup.sh
RUN /tmp/setup.sh "${OGRE_VERSION}"

ARG CACHEBUST=1 
RUN mkdir -p /workspace/src && \
    cd /workspace/src && \
    git clone https://github.com/gazebosim/gz-cmake -b mjcarroll/test_exact && \
    cp ./gz-cmake/examples/find_ogre2/ogre-2.1 . -R && \
    cp ./gz-cmake/examples/find_ogre2/ogre-2.2 . -R && \
    cp ./gz-cmake/examples/find_ogre2/ogre-2.3 . -R

COPY run.sh /tmp/run.sh
ENTRYPOINT ["/tmp/run.sh"]
