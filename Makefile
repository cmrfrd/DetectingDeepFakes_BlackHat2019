.PHONY: run

run:
		@docker build -t deepfakedetector -f Dockerfile.deepfakedetector .
		@docker run --rm -p 8888:8888 -v $$(pwd):/mnt -it deepfakedetector
