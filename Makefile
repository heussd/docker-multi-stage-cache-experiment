IMAGE="heussd/docker-multi-stage-cache-experiment"
IMAGE_CACHE=$(IMAGE)

build:
	docker buildx build \
		--pull \
		--tag "$(IMAGE):latest" \
		--platform "linux/arm/v7,linux/amd64,linux/arm64" \
		--cache-to "type=registry,ref=$(IMAGE_CACHE):buildcache,push=true" \
		--cache-from "type=registry,ref=$(IMAGE_CACHE):buildcache" \
		--push \
		.