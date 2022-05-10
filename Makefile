all:
	wget  "https://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-linux-amd64.tar.gz" -O /tmp/pandoc.tar.gz 
	docker build -t localhost/erikluo/mermaid-pandoc:v1 -f Dockerfile .
