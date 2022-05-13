all: mermaid2  pandoc
	#wget  "https://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-linux-amd64.tar.gz" -O ./pandoc.tar.gz 
	#wget "https://nodejs.org/dist/v16.15.0/node-v16.15.0-linux-x64.tar.xz" -O ./node.tar.xz
	
	
mermaid:
	docker build -t localhost/erikluo/mermaid-pandoc:v1 -f Dockerfile .

mermaid2:
	docker build -t localhost/erikluo/mermaid:v1 -f Dockerfile.mermaid.ubuntu-18.04 .

pandoc:
	docker build -t localhost/erikluo/pandoc:v1 -f Dockerfile.pandoc.ubuntu-20.04 .

