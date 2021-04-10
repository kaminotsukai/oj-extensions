build:
	docker build -t atcoder -f docker/php/Dockerfile .
run:
	docker run -itd atcoder /bin/bash
src:
	docker exec -it 757071e2ce93 bash
this-image:
	docker image ls | grep atcoder

ojd: $(url)
	docker exec 757071e2ce93 bash -c "ojd $(url)"
ojs: $(filename)
	docker exec 757071e2ce93 bash -c "oj s $(filenmae)"
ojtp: $(filename)
	docker exec 757071e2ce93 bash -c "ojtp s $(filenmae)"