# docker-multi-stage-cache-experiment

Experiments in utilizing Docker registry-based caches during image builds to speed-up CI/CD.

## Buildx build

- ✅ Zero modifications of Dockerfile needed
- ✅ Generic solution, works with arbitrary stages and images
- ✅ No manual scripting needed
- ✅ No prerequisites, seamlessly detects what is missing and builds that
- ✅ Works with Docker Hub
- ✅ Works with Azure Container Registries
- ❓ Works with Google Registries
- ✅ Caching registry can be different from push-target registry
- ✅ Supports multi-architectures (just as seamlessly)
- ❓ Complex caching scenarios
