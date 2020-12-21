IMAGE="heussd/docker-multi-stage-cache-experiment"

build:
	echo $(IMAGE)
	docker buildx build \
		--pull \
		--tag "$(IMAGE):latest" \
		--platform "linux/arm/v7,linux/amd64,linux/arm64" \
		--cache-to "type=registry,ref=$(IMAGE):buildcache,push=true" \
		--cache-from "type=registry,ref=$(IMAGE):buildcache" \
		--push \
		.