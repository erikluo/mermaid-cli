FROM node:alpine

ENV CHROME_BIN="/usr/bin/chromium-browser" \
    PUPPETEER_SKIP_CHROMIUM_DOWNLOAD="true"

ARG VERSION

ADD install-dependencies.sh install-dependencies.sh
RUN chmod 755 install-dependencies.sh && /bin/sh install-dependencies.sh

RUN adduser -D mermaidcli
USER mermaidcli
WORKDIR /home/mermaidcli
RUN yarn add @mermaid-js/mermaid-cli@$VERSION

ADD puppeteer-config.json  /puppeteer-config.json

RUN wget  "https://github.com/jgm/pandoc/releases/download/2.18/pandoc-2.18-linux-amd64.tar.gz" -O /tmp/pandoc.tar.gz && tar -xvf /tmp/pandoc.tar.gz 
#ENTRYPOINT ["./node_modules/.bin/mmdc", "-p", "/puppeteer-config.json"]
#CMD [ "--help" ]
