date:=$(shell date +%s)

jammy-2.3:
	docker build -t ogre-test:jammy-2.3 . --build-arg BASE_IMAGE_TAG=jammy --build-arg OGRE_VERSION=2.3 --build-arg CACHEBUST=${date}
	docker run -t ogre-test:jammy-2.3

jammy-2.2:
	docker build -t ogre-test:jammy-2.2 . --build-arg BASE_IMAGE_TAG=jammy --build-arg OGRE_VERSION=2.2 --build-arg CACHEBUST=${date}
	docker run -t ogre-test:jammy-2.2

jammy-both:
	docker build -t ogre-test:jammy-both . --build-arg BASE_IMAGE_TAG=jammy --build-arg OGRE_VERSION=both --build-arg CACHEBUST=${date}
	docker run -t ogre-test:jammy-both

focal-2.3:
	docker build -t ogre-test:focal-2.3 . --build-arg BASE_IMAGE_TAG=focal --build-arg OGRE_VERSION=2.3 --build-arg CACHEBUST=${date}
	docker run -t ogre-test:focal-2.3

focal-2.2:
	docker build -t ogre-test:focal-2.2 . --build-arg BASE_IMAGE_TAG=focal --build-arg OGRE_VERSION=2.2 --build-arg CACHEBUST=${date}
	docker run -t ogre-test:focal-2.2

focal-both:
	docker build -t ogre-test:focal-both . --build-arg BASE_IMAGE_TAG=focal --build-arg OGRE_VERSION=both --build-arg CACHEBUST=${date}
	docker run -t ogre-test:focal-both

