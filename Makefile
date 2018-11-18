NAME=codebuild

all: test

setup: codebuild.sh

build:
	docker build -t $(NAME) .

test: codebuild.sh build
	./codebuild.sh -i ubuntu:18.04 -a /tmp

run:
	docker run -it --rm --entrypoint sh $(NAME)

codebuild_build.sh:
	curl -O https://raw.githubusercontent.com/aws/aws-codebuild-docker-images/master/local_builds/codebuild_build.sh

codebuild.sh: codebuild_build.sh
	sed -e 's#amazon/aws-codebuild-local:latest#'$(NAME)':latest#' $< > $@
	chmod +x $@

clean:
	-rm codebuild.sh codebuild_build.sh
