



IMAGE1_DIR := front
IMAGE2_DIR := back

.PHONY: build front back


#### Build Back e Front
build: front back

front:
    @echo "Building front..."
    cd $(IMAGE1_DIR) && docker build -t image1:latest -f Dockerfile.image1 .

back:
    @echo "Building back..."
    cd $(IMAGE2_DIR) && docker build -t back:latest -f Dockerfile.image2 .




run: run-back run-front

run-back:
	@echo "Run back..."
	docker run --name back -p 8000:8000 back:latest

run-front:
	@echo "Run front..."
	docker run --name front -p 8000:8000 front:latest	


