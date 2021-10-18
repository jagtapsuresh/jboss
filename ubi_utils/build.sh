DOCKER_IMAGE_NAME=jboss7.8.0/jboss-fuse-builder-image
DOCKER_IMAGE_VERSION=latest

docker rmi --force=true ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION}
podman build --force-rm=true --rm=true -t ${DOCKER_IMAGE_NAME}:${DOCKER_IMAGE_VERSION} .
echo =========================================================================
echo Docker image is ready.  Try it out by running:
echo     docker run -d --rm -ti -P ${DOCKER_IMAGE_NAME}
echo =========================================================================
