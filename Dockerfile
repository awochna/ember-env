# Use the latest LTS release of Ubuntu and Node
FROM nodesource/trusty:argon
MAINTAINER Alex Wynter <awynter@tidyfoxdev.com>

EXPOSE 4200 35729

RUN npm install -g ember-cli@2.4.3 \
 && npm install -g bower@1.7.7 \
 && npm install -g phantomjs-prebuilt@2.1.7

VOLUME ["/usr/src/app"]
WORKDIR /usr/src/app
CMD ["bash"]
